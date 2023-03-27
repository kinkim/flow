package com.dragon.flow.enm.privilege;

/**
 * 系统配置枚举
 *
 * @author bruce.liu
 * @date 2021/4/16
 */
public enum SystemConfigEnum {

    // LOGO配置
    LOGO("logo"),
    LOGIN_LOGO("loginLogo"),
    // 系统图标
    FAVICON("favicon"),
    SIGN_IN_DESC("signInDesc"),
    SIGN_IN_TITLE("signInTitle"),
    APP_ICON("appIcon"),
    APP_LOGO("appLogo"),
    APP_LOADING_LOGO("appLoadingLogo"),

    // 登录页背景
    LOGIN_BG("loginBg"),
    LOGIN_BOX_BG("loginBoxBg"),
    // 系统名称
    APP_NAME("appName")
    ;

    public String getSn() {
        return sn;
    }

    private String sn;

    SystemConfigEnum(String sn) {
        this.sn = sn;
    }

}
