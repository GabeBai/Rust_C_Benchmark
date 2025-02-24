; ModuleID = 'quicksort.c'
source_filename = "quicksort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <array_size>\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Error: array size must be a positive integer.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Error: Memory allocation failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"\0ATime taken to sort the array of size %d: %f seconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i32* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %3, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  store i32 %11, i32* %12, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @partition(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %41, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  call void @swap(i32* noundef %33, i32* noundef %37)
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %29, %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %17, !llvm.loop !6

44:                                               ; preds = %17
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  call void @swap(i32* noundef %48, i32* noundef %52)
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quickSort(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @partition(i32* noundef %12, i32 noundef %13, i32 noundef %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  call void @quickSort(i32* noundef %16, i32 noundef %17, i32 noundef %19)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* %6, align 4
  call void @quickSort(i32* noundef %20, i32 noundef %22, i32 noundef %23)
  br label %24

24:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @diff_timespec(%struct.timespec* noundef %0, %struct.timespec* noundef %1) #0 {
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct.timespec*, align 8
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %5 = load %struct.timespec*, %struct.timespec** %3, align 8
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.timespec*, %struct.timespec** %4, align 8
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  %12 = sitofp i64 %11 to double
  %13 = load %struct.timespec*, %struct.timespec** %3, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.timespec*, %struct.timespec** %4, align 8
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
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* noundef %17)
  store i32 1, i32* %3, align 4
  br label %68

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @atoi(i8* noundef %22) #4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %68

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = call noalias i8* @malloc(i64 noundef %31) #5
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %68

38:                                               ; preds = %28
  %39 = call i64 @time(i64* noundef null) #5
  %40 = trunc i64 %39 to i32
  call void @srand(i32 noundef %40) #5
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %51, %38
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = call i32 @rand() #5
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %41, !llvm.loop !8

54:                                               ; preds = %41
  store double 0.000000e+00, double* %11, align 8
  %55 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef %7) #5
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 1
  call void @quickSort(i32* noundef %56, i32 noundef 0, i32 noundef %58)
  %59 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef %8) #5
  %60 = call double @diff_timespec(%struct.timespec* noundef %8, %struct.timespec* noundef %7)
  %61 = load double, double* %11, align 8
  %62 = fadd double %61, %60
  store double %62, double* %11, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load double, double* %11, align 8
  %65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 noundef %63, double noundef %64)
  %66 = load i32*, i32** %9, align 8
  %67 = bitcast i32* %66 to i8*
  call void @free(i8* noundef %67) #5
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %54, %36, %26, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare void @srand(i32 noundef) #3

; Function Attrs: nounwind
declare i64 @time(i64* noundef) #3

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, %struct.timespec* noundef) #3

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
