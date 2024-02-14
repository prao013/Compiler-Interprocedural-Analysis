; ModuleID = 'test03.c'
source_filename = "test03.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test() #0 {
entry:
  %x = alloca %struct.anon, align 8
  %z = alloca %struct.anon*, align 8
  %y = alloca [70 x i32], align 16
  %w = alloca i32, align 4
  store %struct.anon* %x, %struct.anon** %z, align 8
  %0 = load %struct.anon*, %struct.anon** %z, align 8
  %f1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0
  store i32* %w, i32** %f1, align 8
  %arrayidx = getelementptr inbounds [70 x i32], [70 x i32]* %y, i64 0, i64 0
  %f11 = getelementptr inbounds %struct.anon, %struct.anon* %x, i32 0, i32 0
  store i32* %arrayidx, i32** %f11, align 8
  ret void
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
