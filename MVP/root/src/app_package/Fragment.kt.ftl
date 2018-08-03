package ${packageName}

import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import kotlinx.android.synthetic.main.${layoutName}.*
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${moduleName}Fragment :  Fragment(), ${moduleName}.View {

    companion object {

        fun newInstance(): ${moduleName}Fragment {
            val fragment = ${moduleName}Fragment()
//            val args = Bundle()
//            fragment.arguments = args
            return fragment
        }
    }

    private val presenter by lazy {
        ${moduleName}Presenter(this)
    }

    override var viewState: ${moduleName}.ViewState = ${moduleName}.ViewState.Loading()
        set(value) {
            field = value
            render(value)
        }

    override var isActive: Boolean = false
        get() = isAdded

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.${layoutName}, container)
    }

    private fun render(viewState: ${moduleName}.ViewState) {
        when(viewState) {
            is ${moduleName}.ViewState.Data -> {}
            is ${moduleName}.ViewState.Loading -> {}
            is ${moduleName}.ViewState.Empty -> {}
            is ${moduleName}.ViewState.Error -> {}
        }
    }
}
