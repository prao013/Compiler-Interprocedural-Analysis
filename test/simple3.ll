; ModuleID = 'simple3.c'
source_filename = "simple3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@x = dso_local global i32* null, align 8
@y = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g() #0 {
entry:
  %g = alloca i32, align 4
  store i32 1, i32* %g, align 4
  store i32* %g, i32** @x, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f() #0 {
entry:
  %f = alloca i32, align 4
  store i32 1, i32* %f, align 4
  store i32* %f, i32** @x, align 8
  call void @g()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test() #0 {
entry:
  %a = alloca i32*, align 8
  store i32* @y, i32** %a, align 8
  store i32* @y, i32** @x, align 8
  call void @f()
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
