; ModuleID = 'array_sum.c'
source_filename = "array_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timespec = type { i64, i64 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <array_size>\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid array size\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Sum: %lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Time elapsed: %f seconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @diff_timespec(%struct.timespec* noundef %0, %struct.timespec* noundef %1) #0 {
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct.timespec*, align 8
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %5 = load %struct.timespec*, %struct.timespec** %4, align 8
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.timespec*, %struct.timespec** %3, align 8
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  %12 = sitofp i64 %11 to double
  %13 = load %struct.timespec*, %struct.timespec** %4, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.timespec*, %struct.timespec** %3, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = sitofp i64 %19 to double
  %21 = fdiv double %20, 1.000000e+09
  %22 = fadd double %12, %21
  ret double %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec, align 8
  %10 = alloca %struct.timespec, align 8
  %11 = alloca double, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* noundef %20)
  store i32 1, i32* %3, align 4
  br label %87

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @atoi(i8* noundef %25) #4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %87

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = call noalias i8* @malloc(i64 noundef %35) #5
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  call void @perror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %87

41:                                               ; preds = %32
  %42 = call i64 @time(i64* noundef null) #5
  %43 = trunc i64 %42 to i32
  call void @srand(i32 noundef %43) #5
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %55, %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = call i32 @rand() #5
  %50 = srem i32 %49, 1000
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %44, !llvm.loop !6

58:                                               ; preds = %44
  store double 0.000000e+00, double* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %77, %58
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef %9) #5
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %12, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %12, align 8
  %73 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef %10) #5
  %74 = call double @diff_timespec(%struct.timespec* noundef %9, %struct.timespec* noundef %10)
  %75 = load double, double* %11, align 8
  %76 = fadd double %75, %74
  store double %76, double* %11, align 8
  br label %77

77:                                               ; preds = %63
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %59, !llvm.loop !8

80:                                               ; preds = %59
  %81 = load i64, i64* %12, align 8
  %82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 noundef %81)
  %83 = load double, double* %11, align 8
  %84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), double noundef %83)
  %85 = load i32*, i32** %7, align 8
  %86 = bitcast i32* %85 to i8*
  call void @free(i8* noundef %86) #5
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %80, %40, %29, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @perror(i8* noundef) #1

; Function Attrs: nounwind
declare void @srand(i32 noundef) #3

; Function Attrs: nounwind
declare i64 @time(i64* noundef) #3

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, %struct.timespec* noundef) #3

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
