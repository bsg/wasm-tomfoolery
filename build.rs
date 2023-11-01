// TODO print script output somehow

use std::process::Command;

fn main() {
    println!("cargo:rerun-if-changed=guest.cpp");
    Command::new("sh").args(["build_guest.sh"])
        .output()
        .expect("failed to run build_guest.sh");
}
