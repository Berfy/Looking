package cn.berfy.looking.ui.demo.anim;

import android.view.View;

import cn.berfy.looking.BaseActivity;

/**
 * Created by Berfy on 2017/6/29.
 */

public class AnimDemo extends BaseActivity {

    @Override
    protected View initContentView() {
        return new MyView(mContext);
    }

    @Override
    protected int initContentViewById() {
        return 0;
    }

    @Override
    protected void initVariable() {

    }

    @Override
    protected void initView() {

    }

    @Override
    protected void doClickEvent(int viewId) {

    }
}
