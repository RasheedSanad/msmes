part of resources_manager;

class _Shadow {
  //*
  List<BoxShadow> shadow(Color color) => [
        BoxShadow(
          blurRadius: AppSizes.RADIUS_1,
          offset: const Offset(0, 1),
          color: color,
          spreadRadius: AppSizes.RADIUS_0,
          // inset: isPressed,
        ),
        BoxShadow(
          blurRadius: AppSizes.RADIUS_1,
          offset: const Offset(0, 1),
          color: color,
          spreadRadius: AppSizes.RADIUS_0,
          // inset: isPressed,
        ),
      ];
  //* Normal Shadow
  // shadow 1
  List<BoxShadow> s1(BuildContext context, {Color? color}) {
    ThemeData theme = Theme.of(context);
    return [
      BoxShadow(
        blurRadius: AppSizes.RADIUS_1,
        offset: const Offset(0, 1),
        color: color ?? theme.colorScheme.shadow.withAlpha(180),
        spreadRadius: AppSizes.RADIUS_0,
        // inset: isPressed,
      ),
      // BoxShadow(
      //   blurRadius: AppSizes.RADIUS_1,
      //   offset: const Offset(0, 1),
      //   color: color ?? theme.colorScheme.shadow.withAlpha(50),
      //   spreadRadius: AppSizes.RADIUS_0,
      //   // inset: isPressed,
      // ),
    ];
  }

  // Shadow 2
  List<BoxShadow> s2(BuildContext context, {Color? color}) {
    ThemeData theme = Theme.of(context);
    return [
      BoxShadow(
        blurRadius: AppSizes.RADIUS_2,
        offset: const Offset(0, 1),
        color: color ?? theme.colorScheme.shadow,
        spreadRadius: AppSizes.RADIUS_0,
        // inset: isPressed,
      ),
      BoxShadow(
        blurRadius: AppSizes.RADIUS_6,
        offset: const Offset(0, 2),
        color: color ?? theme.colorScheme.shadow,
        spreadRadius: AppSizes.RADIUS_2,
        // inset: isPressed,
      ),
    ];
  }

  // Shadow 3
  List<BoxShadow> s3(BuildContext context, {Color? color}) {
    ThemeData theme = Theme.of(context);
    return [
      BoxShadow(
        blurRadius: AppSizes.RADIUS_8,
        offset: const Offset(0, 4),
        color: color ?? theme.colorScheme.shadow,
        spreadRadius: AppSizes.RADIUS_3,
        // inset: isPressed,
      ),
      BoxShadow(
        blurRadius: AppSizes.RADIUS_3,
        offset: const Offset(0, 1),
        color: color ?? theme.colorScheme.shadow,
        spreadRadius: AppSizes.RADIUS_0,
        // inset: isPressed,
      ),
    ];
  }

  // Shadow 4
  List<BoxShadow> s4(BuildContext context, {Color? color}) {
    ThemeData theme = Theme.of(context);
    return [
      BoxShadow(
        blurRadius: AppSizes.RADIUS_10,
        offset: const Offset(0, 6),
        color: color ?? theme.colorScheme.shadow,
        spreadRadius: AppSizes.RADIUS_4,
        // inset: isPressed,
      ),
      BoxShadow(
        blurRadius: AppSizes.RADIUS_3,
        offset: const Offset(0, 2),
        color: color ?? theme.colorScheme.shadow,
        // inset: isPressed,
      ),
    ];
  }

  // Shadow 5
  List<BoxShadow> s5(
    BuildContext context, {
    Color? color,
  }) {
    ThemeData theme = Theme.of(context);
    return [
      BoxShadow(
        blurRadius: AppSizes.RADIUS_12,
        offset: const Offset(0, 8),
        color: color ?? theme.colorScheme.shadow,
        spreadRadius: AppSizes.RADIUS_6,
      ),
      BoxShadow(
        blurRadius: AppSizes.RADIUS_4,
        offset: const Offset(0, 4),
        color: color ?? theme.colorScheme.shadow,
      ),
    ];
  }
  //* End Normal Shadow

  //* Inner Shadow
  List<BoxShadow> innerShadow(Color color) {
    return [
      BoxShadow(
        blurRadius: AppSizes.RADIUS_2,
        offset: const Offset(0, 3),
        color: color,
        spreadRadius: -2,
        // inset: isPressed,
      ),
      BoxShadow(
        blurRadius: AppSizes.RADIUS_3,
        offset: const Offset(0, 1),
        color: color,
        spreadRadius: -4,
        // inset: isPressed,
      ),
    ];
  }

  // inner Shadow 1
  List<BoxShadow> inner1(BuildContext context, {Color? color}) {
    ThemeData theme = Theme.of(context);
    return [
      BoxShadow(
        blurRadius: AppSizes.RADIUS_2,
        offset: const Offset(0, 1),
        color: color ?? theme.colorScheme.shadow,
        spreadRadius: -3,
        // inset: isPressed,
      ),
      BoxShadow(
        blurRadius: AppSizes.RADIUS_3,
        offset: const Offset(0, 1),
        color: color ?? theme.colorScheme.shadow,
        spreadRadius: -4,
        // inset: isPressed,
      ),
    ];
  }

  // inner Shadow 2
  List<BoxShadow> inner2(BuildContext context, {Color? color}) {
    ThemeData theme = Theme.of(context);
    return [
      BoxShadow(
        color: color ?? theme.colorScheme.shadow,
      ),
      BoxShadow(
        color: color ?? theme.colorScheme.shadow,
        blurRadius: .5,
        // blurStyle: BlurStyle.inner,
        spreadRadius: -.4,
        offset: const Offset(0.0, 1),
      ),
    ];
  }

  // inner Shadow 5
  List<BoxShadow> inner5(BuildContext context, {Color? color}) {
    ThemeData theme = Theme.of(context);
    return [
      BoxShadow(
        color: color ?? theme.colorScheme.shadow,
        blurRadius: 8.0,
        offset: Offset(-5, -4),
        spreadRadius: -20,
        blurStyle: BlurStyle.inner,
      ),
      BoxShadow(
        color: color ?? theme.colorScheme.shadow,
        blurRadius: 3,
        blurStyle: BlurStyle.inner,
        spreadRadius: -20,
        offset: const Offset(-20.0, -23),
      ),
    ];
  }

  // outer shadow
  List<BoxShadow> outer1(BuildContext context, {Color? color}) {
    ThemeData theme = Theme.of(context);
    return [
      BoxShadow(
        blurRadius: AppSizes.RADIUS_2,
        offset: const Offset(0, 1),
        color: color ?? theme.colorScheme.shadow,
        spreadRadius: AppSizes.RADIUS_0,
        blurStyle: BlurStyle.outer,
      ),
      BoxShadow(
        blurRadius: AppSizes.RADIUS_6,
        offset: const Offset(0, 2),
        color: color ?? theme.colorScheme.shadow,
        spreadRadius: AppSizes.RADIUS_2,
        blurStyle: BlurStyle.outer,
      ),
    ];
  }
}
