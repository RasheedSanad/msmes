import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:msmes_app/core/ui/pages/ui_error.dart';
import 'package:msmes_app/core/ui/pages/ui_loading.dart';
import 'package:msmes_app/core/ui/pages/ui_no_data.dart';
import 'package:msmes_app/features/home/domain/entities/service_entity.dart';
import 'package:msmes_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:msmes_app/features/home/presentation/widgets/services_widget.dart';

class MockHomeBloc extends MockBloc<HomeEvent, HomeState> implements HomeBloc {}

void main() {
  late MockHomeBloc mockHomeBloc;

  setUp(() {
    mockHomeBloc = MockHomeBloc();
    // HttpOverrides.global = null;
  });

  Widget _makeTestableWidget(Widget body) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return BlocProvider<HomeBloc>(
            create: (context) => mockHomeBloc,
            child: MaterialApp(
              home: body,
            ),
          );
        });
  }

  final testServicesModel = [
    ServiceEntity(
      title: 'الاستشارات',
      content: "لديك سوال وتبحث عن اجابة، ستجد الاجابة في اي مجال تريد",
    ),
    ServiceEntity(
      title: 'الارشاد',
      content: "المشورة والتوجية في كل اقسام مشروعك واصنع قصة نجاح معنا",
    ),
  ];

  testWidgets('should show initial empty state', (WidgetTester tester) async {
    // Ensure the initial state is HomeEmpty
    when(() => mockHomeBloc.state).thenReturn(HomeServicesEmpty());

    // Build the widget
    await tester.pumpWidget(_makeTestableWidget(const ServicesWidget()));

    // Check that the widget displays the correct initial state
    expect(find.byType(UiNoData), findsOneWidget);
  });

  testWidgets('should show progress indicator when state is loading',
      (WidgetTester tester) async {
    // Arrange: Ensure the state is HomeLoading when accessed
    when(() => mockHomeBloc.state).thenReturn(HomeServicesLoading());

    // Act: Build the widget
    await tester.pumpWidget(_makeTestableWidget(const ServicesWidget()));

    // Assert: Verify that UiLoading is displayed
    expect(find.byType(UiLoading), findsOneWidget);
  });
}
