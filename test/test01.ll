; ModuleID = 'test01.c'
source_filename = "test01.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@y = dso_local global i32 0, align 4
@x = dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g(i32* noundef %n) #0 {
entry:
  %n.addr = alloca i32*, align 8
  store i32* %n, i32** %n.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f(i32* noundef %m) #0 {
entry:
  %m.addr = alloca i32*, align 8
  store i32* %m, i32** %m.addr, align 8
  %0 = load i32*, i32** %m.addr, align 8
  call void @g(i32* noundef %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test() #0 {
entry:
  %a = alloca i32*, align 8
  store i32* @y, i32** %a, align 8
  store i32* @y, i32** @x, align 8
  %0 = load i32*, i32** %a, align 8
  call void @f(i32* noundef %0)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
