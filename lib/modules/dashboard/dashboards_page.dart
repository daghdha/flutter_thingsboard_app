import 'package:flutter/material.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';
import 'package:thingsboard_app/core/entity/entities_base.dart';
import 'package:thingsboard_app/widgets/tb_app_bar.dart';

import 'dashboards_list.dart';

class DashboardsPage extends TbPageWidget<DashboardsPage, _DashboardsPageState> {

  DashboardsPage(TbContext tbContext) : super(tbContext);

  @override
  _DashboardsPageState createState() => _DashboardsPageState();

}

class _DashboardsPageState extends TbPageState<DashboardsPage, _DashboardsPageState> {

  final PageLinkController _pageLinkController = PageLinkController();

  @override
  Widget build(BuildContext context) {
    var dashboardsList = DashboardsList(tbContext, _pageLinkController);
    return Scaffold(
        appBar: TbAppBar(
            tbContext,
            title: Text(dashboardsList.title)
        ),
        body: dashboardsList
    );
  }

  @override
  void dispose() {
    _pageLinkController.dispose();
    super.dispose();
  }

}