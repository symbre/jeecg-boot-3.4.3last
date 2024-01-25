import {defHttp} from '/@/utils/http/axios';
import { useMessage } from "/@/hooks/web/useMessage";

const { createConfirm } = useMessage();

enum Api {
  list = '/cesOrderMain/cesOrderMain/list',
  save='/cesOrderMain/cesOrderMain/add',
  edit='/cesOrderMain/cesOrderMain/edit',
  deleteOne = '/cesOrderMain/cesOrderMain/delete',
  deleteBatch = '/cesOrderMain/cesOrderMain/deleteBatch',
  importExcel = '/cesOrderMain/cesOrderMain/importExcel',
  exportXls = '/cesOrderMain/cesOrderMain/exportXls',
  queryDataById = '/cesOrderMain/cesOrderMain/queryById',
  cesOrderGoodsList = '/cesOrderMain/cesOrderMain/queryCesOrderGoodsByMainId',
  cesOrderCustomerList = '/cesOrderMain/cesOrderMain/queryCesOrderCustomerByMainId',
}
/**
 * 导出api
 * @param params
 */
export const getExportUrl = Api.exportXls;

/**
 * 导入api
 */
export const getImportUrl = Api.importExcel;

/**
 * 查询子表数据
 * @param params
 */
export const queryCesOrderGoodsListByMainId = (id) => defHttp.get({url: Api.cesOrderGoodsList, params:{ id }});
/**
 * 查询子表数据
 * @param params
 */
export const queryCesOrderCustomerListByMainId = (id) => defHttp.get({url: Api.cesOrderCustomerList, params:{ id }});

/**
 * 列表接口
 * @param params
 */
export const list = (params) =>
  defHttp.get({url: Api.list, params});

/**
 * 删除单个
 */
export const deleteOne = (params,handleSuccess) => {
  return defHttp.delete({url: Api.deleteOne, params}, {joinParamsToUrl: true}).then(() => {
    handleSuccess();
  });
}
/**
 * 批量删除
 * @param params
 */
export const batchDelete = (params, handleSuccess) => {
  createConfirm({
    iconType: 'warning',
    title: '确认删除',
    content: '是否删除选中数据',
    okText: '确认',
    cancelText: '取消',
    onOk: () => {
      return defHttp.delete({url: Api.deleteBatch, data: params}, {joinParamsToUrl: true}).then(() => {
        handleSuccess();
      });
    }
  });
}
/**
 * 保存或者更新
 * @param params
 */
export const saveOrUpdate = (params, isUpdate) => {
  let url = isUpdate ? Api.edit : Api.save;
  return defHttp.post({url: url, params});
}

/**
* 根据id查询数据
* @param params
*/
export const queryDataById = (id) => defHttp.get({url: Api.queryDataById, params:{ id }});

