class AppRouterConstant {
  // add a private constructor to prevent this class being instantiated
  // e.g. invoke `LocalStorageKey()` accidentally
  AppRouterConstant._(); // Private constructor to prevent instantiation

  //**************************************************/
  // ? Main Pages
  // * Home page
  static String HOME_PAGE = '/HOME_PAGE';
  static String TEST_PAGE_WITHOUT_PATH = 'TEST_PAGE';
  static String TEST_PAGE = '$HOME_PAGE/$TEST_PAGE_WITHOUT_PATH';
  // * IDEA
  static String IDEA_PAGE = '/IDEA_PAGE';
  // * MY TASKS
  static String MY_TASKS_PAGE = '/MY_TASKS_PAGE';
  // * MESSAGES
  static String MESSAGES_PAGE = '/MESSAGES_PAGE';
  // * MORE
  static String MORE_PAGE = '/MORE_PAGE';
}
