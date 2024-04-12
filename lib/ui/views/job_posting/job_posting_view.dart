import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'job_posting_viewmodel.dart';

class JobPostingView extends StackedView<JobPostingViewModel> {
  const JobPostingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    JobPostingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  JobPostingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      JobPostingViewModel();
}
