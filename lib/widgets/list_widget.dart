import 'package:flutter/material.dart';
import 'package:joing_app/views/chat-view.dart';
import 'package:joing_app/views/feed_view.dart';
import 'package:joing_app/views/profile_view.dart';

import '../views/home_view.dart';

List screen = [
  HomeView(),
  const FeedView(),
  const ChatView(),
  const ProfileView(),
];
