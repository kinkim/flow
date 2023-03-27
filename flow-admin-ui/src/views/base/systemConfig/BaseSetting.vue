<template>
  <CollapseContainer title="基本设置" :canExpan="false">
    <a-row :gutter="24">
      <a-col :span="13">
        <Popover placement="right">
          <template #content>
            <div class="tooltip-popover-content">
              <img src="../../../assets/images/help/tooltip-app-name.png" />
            </div>
          </template>
          <div class="mb-2">项目名称</div>
          <a-input v-model:value="settingObj.appName"/>
        </Popover>
      </a-col>

      <a-col :span="13">
        <Popover placement="right">
          <template #content>
            <div class="tooltip-popover-content">
              <img src="../../../assets/images/help/tooltip-app-name.png" />
            </div>
          </template>
          <div class="change-logo">
            <div class="mb-2 mt-4">站点图标</div>
            <Upload style="margin: auto;"
                    name="avatar"
                    list-type="picture-card"
                    class="favicon-uploader"
                    :show-upload-list="false"
                    :before-upload="beforeUpload"
                    :multiple="false"
            >
              <img v-if="settingObj.favicon" :src="settingObj.favicon" alt="avatar" />
              <div v-else>
                <plus-outlined ></plus-outlined>
                <div class="ant-upload-text">上传</div>
              </div>
            </Upload>
          </div>
        </Popover>
      </a-col>

      <a-col :span="13">
        <Popover placement="right">
          <template #content>
            <div class="tooltip-popover-content">
              <img src="../../../assets/images/help/tooltip-app-name.png" />
            </div>
          </template>
          <div class="change-logo">
            <div class="mb-2 mt-4">LOGO</div>
            <Upload style="margin: auto;"
                    name="avatar"
                    list-type="picture-card"
                    class="logo-uploader"
                    :show-upload-list="false"
                    :before-upload="beforeUpload"
                    :multiple="false"
            >
              <img v-if="settingObj.logo" :src="settingObj.logo" alt="avatar" />
              <div v-else>
                <plus-outlined ></plus-outlined>
                <div class="ant-upload-text">上传</div>
              </div>
            </Upload>
          </div>
        </Popover>
      </a-col>
    </a-row>
    <Button type="primary" @click="handleSubmit"> 更新基本信息 </Button>
  </CollapseContainer>
</template>
<script lang="ts">
  import { Button, Row, Col, Upload, Popover } from 'ant-design-vue';
  import { computed, ref, defineComponent, watch, onMounted } from 'vue';
  import { BasicForm, useForm } from '/@/components/Form/index';
  import { CollapseContainer } from '/@/components/Container';
  import { CropperAvatar } from '/@/components/Cropper';
  import { PlusOutlined, LoadingOutlined } from '@ant-design/icons-vue';
  import { useMessage } from '/@/hooks/web/useMessage';
  import headerImg from '/@/assets/images/header.jpg';
  import { baseSetschemas } from './data';
  import { useUserStore } from '/@/store/modules/user';
  import { uploadApi } from '/@/api/sys/upload';
  import { useFavicon } from '@vueuse/core'

  export default defineComponent({
    components: {
      BasicForm, PlusOutlined, Upload, Popover,
      CollapseContainer,
      Button,
      ARow: Row,
      ACol: Col,
      CropperAvatar,
    },
    props: {
      configDataList: {
        type: Array,
      },
    },
    setup(props) {
      const { createMessage } = useMessage();
      const userStore = useUserStore();
      const appLogo = ref();
      const systemConfigSettingList = ref();
      const configSettingMap = {};
      const appName = ref();
      const settingObj = ref({});

      const [register, { setFieldsValue }] = useForm({
        labelWidth: 120,
        schemas: baseSetschemas,
        showActionButtonGroup: false,
      });

      onMounted(() => {
        // setConfigDataList(props.configDataList);
      });

      function setConfigDataList(list) {
        console.log('====================', list);
        systemConfigSettingList.value = list;
        if(list){
          const tempObj = {};
          for (let item of list) {
            configSettingMap[item.configKey] = item;
            tempObj[item.configKey] = item.configValue;
            if(item.configKey === 'favicon' || item.configKey === 'logo'){
              tempObj[item.configKey] = item.image;
            }
          }
          settingObj.value = tempObj;
        }
      }

      watch(
        () => props.configDataList,
        (list) => {
          setConfigDataList(list);
        },
        { immediate: true },
      );
      const avatar = computed(() => {
        const { avatar } = userStore.getUserInfo;
        return avatar || headerImg;
      });

      function updateAvatar(src: string) {
        const userinfo = userStore.getUserInfo;
        userinfo.avatar = src;
        userStore.setUserInfo(userinfo);
      }

      // 解析为base64位
      const getBase64 = (img, callback) => {
        const reader = new FileReader();
        reader.addEventListener('load', () => callback(reader.result));
        // 读取文件
        reader.readAsDataURL(img);
      }

      const beforeUpload = (file) => {
        debugger;
        /// "image/x-icon"
        const isJpgOrPng = file.type === 'image/jpeg' || file.type === 'image/png';
        if (!isJpgOrPng) {
          createMessage.error("只允许上传JPG图片！");
          return false;
        }
        const isLt2M = file.size / 1024 / 1024 < 2;
        if (!isLt2M) {
          createMessage.error("图片不能大于2MB！");
          return false;
        }
        getBase64(file, imgUrl => {
            // imageUrl.value = imgUrl;
          }
        );
        return false;
      }

      function handleSubmit() {
        createMessage.success('更新成功！');
        console.log(settingObj.value);

      }

      return {
        avatar,
        register,
        beforeUpload,
        appLogo,
        uploadApi: uploadApi as any,
        updateAvatar,
        handleSubmit,
        systemConfigSettingList,
        appName,
        settingObj
      };
    },
  });
</script>

<style lang="less">
.tooltip-popover-content{
  width: 400px;
  height: 200px;
}
.favicon-uploader {
    .ant-upload.ant-upload-select-picture-card{
      width: 64px;
      height: 64px;
    }
  }
  .logo-uploader {
    .ant-upload.ant-upload-select-picture-card{
      width: 200px;
      height: 200px;
    }
  }
</style>
