# CMake generated Testfile for 
# Source directory: /home/nvidia/catkin2_ws/src/laser_filters
# Build directory: /home/nvidia/catkin2_ws/build/laser_filters
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_laser_filters_rostest_test_test_scan_filter_chain.launch "/home/nvidia/catkin2_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/nvidia/catkin2_ws/build/test_results/laser_filters/rostest-test_test_scan_filter_chain.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/nvidia/catkin2_ws/src/laser_filters --package=laser_filters --results-filename test_test_scan_filter_chain.xml --results-base-dir \"/home/nvidia/catkin2_ws/build/test_results\" /home/nvidia/catkin2_ws/src/laser_filters/test/test_scan_filter_chain.launch ")
add_test(_ctest_laser_filters_gtest_test_shadow_detector "/home/nvidia/catkin2_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/nvidia/catkin2_ws/build/test_results/laser_filters/gtest-test_shadow_detector.xml" "--return-code" "/home/nvidia/catkin2_ws/devel/lib/laser_filters/test_shadow_detector --gtest_output=xml:/home/nvidia/catkin2_ws/build/test_results/laser_filters/gtest-test_shadow_detector.xml")
