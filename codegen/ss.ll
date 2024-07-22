; ModuleID = 'ss.bc'
source_filename = "test_apps/selection_sort.txt"

define i32 @main() {
  %1 = alloca [10 x i32], align 4
  %2 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 0
  store i32 64, i32* %2, align 4
  %3 = getelementptr inbounds i32, i32* %2, i32 1
  store i32 124, i32* %3, align 4
  %4 = getelementptr inbounds i32, i32* %3, i32 1
  store i32 25, i32* %4, align 4
  %5 = getelementptr inbounds i32, i32* %4, i32 1
  store i32 8, i32* %5, align 4
  %6 = getelementptr inbounds i32, i32* %5, i32 1
  store i32 12, i32* %6, align 4
  %7 = getelementptr inbounds i32, i32* %6, i32 1
  store i32 22, i32* %7, align 4
  %8 = getelementptr inbounds i32, i32* %7, i32 1
  store i32 11, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32 207, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32 2, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32 79, i32* %11, align 4
  %12 = alloca i32, align 4
  store i32 10, i32* %12, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %13, align 4
  br label %main_loop_header

main_loop_header:                                 ; preds = %main_after_loop3, %0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %main_loop_body, label %main_after_loop

main_loop_body:                                   ; preds = %main_loop_header
  %17 = alloca i32, align 4
  %18 = load i32, i32* %13, align 4
  store i32 %18, i32* %17, align 4
  %19 = alloca i32, align 4
  %20 = load i32, i32* %13, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %main_loop_header1

main_after_loop:                                  ; preds = %main_loop_header
  %22 = alloca i32, align 4
  store i32 0, i32* %22, align 4
  br label %main_loop_header4

main_loop_header1:                                ; preds = %49, %main_loop_body
  %23 = load i32, i32* %19, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %main_loop_body2, label %main_after_loop3

main_loop_body2:                                  ; preds = %main_loop_header1
  %26 = load i32, i32* %19, align 4
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %17, align 4
  %30 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %47, label %49

main_after_loop3:                                 ; preds = %main_loop_header1
  %33 = alloca i32, align 4
  %34 = load i32, i32* %13, align 4
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 4
  %37 = load i32, i32* %13, align 4
  %38 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %37
  %39 = load i32, i32* %17, align 4
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %38, align 4
  %42 = load i32, i32* %17, align 4
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %42
  %44 = load i32, i32* %33, align 4
  store i32 %44, i32* %43, align 4
  %45 = load i32, i32* %13, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %main_loop_header

47:                                               ; preds = %main_loop_body2
  %48 = load i32, i32* %19, align 4
  store i32 %48, i32* %17, align 4
  br label %49

49:                                               ; preds = %47, %main_loop_body2
  %50 = load i32, i32* %19, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %19, align 4
  br label %main_loop_header1

main_loop_header4:                                ; preds = %main_loop_body5, %main_after_loop
  %52 = load i32, i32* %22, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %main_loop_body5, label %main_after_loop6

main_loop_body5:                                  ; preds = %main_loop_header4
  %55 = load i32, i32* %22, align 4
  %56 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %55
  %57 = load i32, i32* %56, align 4
  call void @printVarInt(i32 %57)
  %58 = load i32, i32* %22, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %22, align 4
  br label %main_loop_header4

main_after_loop6:                                 ; preds = %main_loop_header4
  ret i32 0
}

declare void @printVarInt(i32)

declare void @printVarFloat(float)
