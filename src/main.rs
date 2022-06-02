#![allow(unused)]

mod enemy;
mod player;

use bevy::prelude::*;
use bevy_rapier2d::prelude::*;

fn main() {
    let mut physics_conf = RapierConfiguration::default();
    physics_conf.gravity = Vec2::ZERO;

    App::new()
        .add_plugins(DefaultPlugins)
        .add_plugin(RapierPhysicsPlugin::<NoUserData>::pixels_per_meter(100.0))
        .add_plugin(RapierDebugRenderPlugin::default())
        .run();
}

