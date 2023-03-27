<template>
  <ScrollContainer>
    <div ref="wrapperRef" :class="prefixCls">
      <Tabs tab-position="left" :tabBarStyle="tabBarStyle">
        <template v-for="item in settingList" :key="item.key">
          <TabPane :tab="item.name">
            <component :is="item.component" :configDataList="settingDataList" />
          </TabPane>
        </template>
      </Tabs>
    </div>
  </ScrollContainer>
</template>

<script lang="ts">
  import {defineComponent, onMounted, ref} from 'vue';
  import { Tabs } from 'ant-design-vue';
  import { ScrollContainer } from '/@/components/Container/index';
  import { settingList } from './data';
  import BaseSetting from './BaseSetting.vue';
  import LoginPageSetting from './LoginPageSetting.vue';
  import {getAllSystemConfigSettings} from "/@/api/base/systemConfig";

  export default defineComponent({
    components: {
      ScrollContainer,
      Tabs,
      TabPane: Tabs.TabPane,
      BaseSetting,
      LoginPageSetting,
    },
    setup() {
      const settingDataList = ref();
      onMounted(() => {
        getAllSystemConfigSettings().then(res => {
          if (res) {
            settingDataList.value = res;
          }
        });
      });

      return {
        prefixCls: 'account-setting',
        settingList,
        settingDataList,
        tabBarStyle: {
          width: '220px',
        },
      };
    },
  });
</script>
<style lang="less">
  .account-setting {
    margin: 12px;
    background-color: @component-background;

    .base-title {
      padding-left: 0;
    }

    .ant-tabs-tab-active {
      background-color: @item-active-bg;
    }
  }
</style>
