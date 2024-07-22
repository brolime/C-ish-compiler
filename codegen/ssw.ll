; ModuleID = 'ssw.bc'
source_filename = "test_apps/selection_sort_while.txt"

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
  store i32 0, i32* %13, align 4
  br label %main_loop_header4

main_loop_header1:                                ; preds = %48, %main_loop_body
  %22 = load i32, i32* %19, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %main_loop_body2, label %main_after_loop3

main_loop_body2:                                  ; preds = %main_loop_header1
  %25 = load i32, i32* %19, align 4
  %26 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %17, align 4
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %46, label %48

main_after_loop3:                                 ; preds = %main_loop_header1
  %32 = alloca i32, align 4
  %33 = load i32, i32* %13, align 4
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 4
  %36 = load i32, i32* %13, align 4
  %37 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %36
  %38 = load i32, i32* %17, align 4
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %37, align 4
  %41 = load i32, i32* %17, align 4
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %41
  %43 = load i32, i32* %32, align 4
  store i32 %43, i32* %42, align 4
  %44 = load i32, i32* %13, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %main_loop_header

46:                                               ; preds = %main_loop_body2
  %47 = load i32, i32* %19, align 4
  store i32 %47, i32* %17, align 4
  br label %48

48:                                               ; preds = %46, %main_loop_body2
  %49 = load i32, i32* %19, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %19, align 4
  br label %main_loop_header1

main_loop_header4:                                ; preds = %main_loop_body5, %main_after_loop
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %main_loop_body5, label %main_after_loop6

main_loop_body5:                                  ; preds = %main_loop_header4
  %54 = load i32, i32* %13, align 4
  %55 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %54
  %56 = load i32, i32* %55, align 4
  call void @printVarInt(i32 %56)
  %57 = load i32, i32* %13, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %main_loop_header4

main_after_loop6:                                 ; preds = %main_loop_header4
  ret i32 0
}

declare void @printVarInt(i32)

declare void @printVarFloat(float)
