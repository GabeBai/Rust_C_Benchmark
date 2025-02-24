; ModuleID = 'array_sum.8c65c26a7240cd5c-cgu.0'
source_filename = "array_sum.8c65c26a7240cd5c-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"std::ffi::os_str::OsString" = type { %"std::sys::os_str::bytes::Buf" }
%"std::sys::os_str::bytes::Buf" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { %"alloc::raw_vec::RawVec<u8>", i64 }
%"alloc::raw_vec::RawVec<u8>" = type { %"alloc::raw_vec::RawVecInner", %"core::marker::PhantomData<u8>" }
%"alloc::raw_vec::RawVecInner" = type { i64, ptr, %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%"core::marker::PhantomData<u8>" = type {}
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hfa307f63486243b3E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hcbfb7e6155bda534E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hcbfb7e6155bda534E" }>, align 8
@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_09d55da7d9141144c630ad3a2c3b6f07 = private unnamed_addr constant <{ [111 x i8] }> <{ [111 x i8] c"/home/agao/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/raw_vec.rs" }>, align 1
@alloc_4892b468f6f903dcc7427b94f1520654 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_09d55da7d9141144c630ad3a2c3b6f07, [16 x i8] c"o\00\00\00\00\00\00\00+\02\00\00\11\00\00\00" }>, align 8
@alloc_85fc59111fd0cef7ef4093da3840b035 = private unnamed_addr constant <{ [8 x i8] }> zeroinitializer, align 1
@alloc_4512ea4d70b3230c29e1064b2aeca84b = private unnamed_addr constant <{ [123 x i8] }> <{ [123 x i8] c"/home/agao/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/iterator.rs" }>, align 1
@alloc_1c42992998313cbe7715ffca55c09a5f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_4512ea4d70b3230c29e1064b2aeca84b, [16 x i8] c"{\00\00\00\00\00\00\00\B3\07\00\00\09\00\00\00" }>, align 8
@alloc_5cb8b3d4323506b2a191a95e635f7eae = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"src/array_sum.rs" }>, align 1
@alloc_5b0102dc258292fd5e83bca8293a8d53 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"Sum: " }>, align 1
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_fae7b78f3403b48b2870d7d78fcc4226 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_5b0102dc258292fd5e83bca8293a8d53, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_c219cfa59b3e2444a794e7497b6e4503 = private unnamed_addr constant <{ [32 x i8] }> <{ [32 x i8] c"Time taken to sum array of size " }>, align 1
@alloc_556e4180596b5b612bb6ed6c0cbb55e1 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c": " }>, align 1
@alloc_41bac06a7674978c8867bab93af34022 = private unnamed_addr constant <{ [9 x i8] }> <{ [9 x i8] c" seconds\0A" }>, align 1
@alloc_e9733d77bbfc181bdc07f6a581d03ae5 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_c219cfa59b3e2444a794e7497b6e4503, [8 x i8] c" \00\00\00\00\00\00\00", ptr @alloc_556e4180596b5b612bb6ed6c0cbb55e1, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @alloc_41bac06a7674978c8867bab93af34022, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@alloc_aad2517fd4101d459009dc52af803952 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5cb8b3d4323506b2a191a95e635f7eae, [16 x i8] c"\10\00\00\00\00\00\00\00\1F\00\00\00\1A\00\00\00" }>, align 8
@alloc_2bd6595a69db0f93055ce8f32cf39e17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5cb8b3d4323506b2a191a95e635f7eae, [16 x i8] c"\10\00\00\00\00\00\00\00%\00\00\00\13\00\00\00" }>, align 8
@alloc_29ae15fce5ff24d4864549f41b192b00 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c"Invalid array size\0A" }>, align 1
@alloc_1b84144bb19ede9f36af48f53cfd8ec2 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_29ae15fce5ff24d4864549f41b192b00, [8 x i8] c"\13\00\00\00\00\00\00\00" }>, align 8
@alloc_05caefeccd73f12fad9eef8a0339362a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5cb8b3d4323506b2a191a95e635f7eae, [16 x i8] c"\10\00\00\00\00\00\00\00\0D\00\00\001\00\00\00" }>, align 8
@alloc_b3b7b62e2de4e0d2f54071994dec848f = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"Usage: " }>, align 1
@alloc_e04b098a0aab35e6981327da6da001a6 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c" <array_size>\0A" }>, align 1
@alloc_f5141501c590cf3a1a1c86d0852343ad = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_b3b7b62e2de4e0d2f54071994dec848f, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @alloc_e04b098a0aab35e6981327da6da001a6, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8

; std::rt::lang_start
; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_ZN3std2rt10lang_start17hdd0e643212195a06E(ptr noundef nonnull %main, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe) unnamed_addr #0 {
start:
  %_8 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_8)
  store ptr %main, ptr %_8, align 8
; call std::rt::lang_start_internal
  %0 = call noundef i64 @_ZN3std2rt19lang_start_internal17h78dd36c15a6b42b8E(ptr noundef nonnull align 1 %_8, ptr noalias noundef nonnull readonly align 8 dereferenceable(48) @vtable.0, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_8)
  ret i64 %0
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hcbfb7e6155bda534E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %_1) unnamed_addr #1 {
start:
  %_4 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
; call std::sys::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0e1919b8f8bba079E(ptr noundef nonnull %_4)
  ret i32 0
}

; std::sys::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0e1919b8f8bba079E(ptr nocapture noundef nonnull readonly %f) unnamed_addr #2 {
start:
  tail call void %f()
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !5
  ret void
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hfa307f63486243b3E"(ptr nocapture noundef readonly %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
; call std::sys::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0e1919b8f8bba079E(ptr noundef nonnull readonly %0), !noalias !6
  ret i32 0
}

; core::ptr::drop_in_place<std::env::Args>
; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hbd2058f8880fb0a9E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(32) %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %0 = getelementptr inbounds i8, ptr %_1, i64 8
  %self2.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !21, !nonnull !4, !noundef !4
  %1 = getelementptr inbounds i8, ptr %_1, i64 24
  %self.val3.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !21, !nonnull !4, !noundef !4
  %2 = ptrtoint ptr %self.val3.i.i.i.i to i64
  %3 = ptrtoint ptr %self2.i.i.i.i to i64
  %4 = sub nuw i64 %2, %3
  %5 = udiv exact i64 %4, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %_710.i.i.i.i.i = icmp eq ptr %self.val3.i.i.i.i, %self2.i.i.i.i
  br i1 %_710.i.i.i.i.i, label %bb1.i.i.i.i, label %bb5.i.i.i.i.i

bb5.i.i.i.i.i:                                    ; preds = %start, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i"
  %_3.sroa.0.011.i.i.i.i.i = phi i64 [ %6, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i" ], [ 0, %start ]
  %_6.i.i.i.i.i = getelementptr inbounds [0 x %"std::ffi::os_str::OsString"], ptr %self2.i.i.i.i, i64 0, i64 %_3.sroa.0.011.i.i.i.i.i
  %6 = add nuw i64 %_3.sroa.0.011.i.i.i.i.i, 1
  %_6.val.i.i.i.i.i = load i64, ptr %_6.i.i.i.i.i, align 8, !alias.scope !22, !noalias !21
  %7 = icmp eq i64 %_6.val.i.i.i.i.i, 0
  br i1 %7, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i", label %bb2.i.i.i4.i.i.i.i.i.i.i.i

bb2.i.i.i4.i.i.i.i.i.i.i.i:                       ; preds = %bb5.i.i.i.i.i
  %8 = getelementptr i8, ptr %_6.i.i.i.i.i, i64 8
  %_6.val7.i.i.i.i.i = load ptr, ptr %8, align 8, !alias.scope !22, !noalias !21, !nonnull !4, !noundef !4
  tail call void @__rust_dealloc(ptr noundef nonnull %_6.val7.i.i.i.i.i, i64 noundef %_6.val.i.i.i.i.i, i64 noundef 1) #20, !noalias !25
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i": ; preds = %bb2.i.i.i4.i.i.i.i.i.i.i.i, %bb5.i.i.i.i.i
  %_7.i.i.i.i.i = icmp eq i64 %6, %5
  br i1 %_7.i.i.i.i.i, label %bb1.i.i.i.i, label %bb5.i.i.i.i.i

bb1.i.i.i.i:                                      ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i", %start
  %9 = getelementptr inbounds i8, ptr %_1, i64 16
  %capacity1.i.i5.i.i.i.i = load i64, ptr %9, align 8, !alias.scope !21, !noundef !4
  %10 = icmp eq i64 %capacity1.i.i5.i.i.i.i, 0
  br i1 %10, label %"_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17hb74646f698f207c5E.exit", label %bb2.i.i.i.i.i6.i.i.i.i

bb2.i.i.i.i.i6.i.i.i.i:                           ; preds = %bb1.i.i.i.i
  %ptr.i.i7.i.i.i.i = load ptr, ptr %_1, align 8, !alias.scope !21, !nonnull !4, !noundef !4
  %11 = mul nuw i64 %capacity1.i.i5.i.i.i.i, 24
  tail call void @__rust_dealloc(ptr noundef nonnull %ptr.i.i7.i.i.i.i, i64 noundef %11, i64 noundef 8) #20, !noalias !21
  br label %"_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17hb74646f698f207c5E.exit"

"_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17hb74646f698f207c5E.exit": ; preds = %bb1.i.i.i.i, %bb2.i.i.i.i.i6.i.i.i.i
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hf2582b2c8b5658a9E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %_1, i64 8
  %_1.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %1 = getelementptr inbounds i8, ptr %_1, i64 16
  %_1.val1 = load i64, ptr %1, align 8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %_710.i.i = icmp eq i64 %_1.val1, 0
  br i1 %_710.i.i, label %bb4, label %bb5.i.i

bb5.i.i:                                          ; preds = %start, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he8101475e78ad32cE.exit.i.i"
  %_3.sroa.0.011.i.i = phi i64 [ %2, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he8101475e78ad32cE.exit.i.i" ], [ 0, %start ]
  %_6.i.i = getelementptr inbounds [0 x %"alloc::string::String"], ptr %_1.val, i64 0, i64 %_3.sroa.0.011.i.i
  %2 = add nuw i64 %_3.sroa.0.011.i.i, 1
  %_6.val.i.i = load i64, ptr %_6.i.i, align 8, !alias.scope !26
  %3 = icmp eq i64 %_6.val.i.i, 0
  br i1 %3, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he8101475e78ad32cE.exit.i.i", label %bb2.i.i.i4.i.i.i.i

bb2.i.i.i4.i.i.i.i:                               ; preds = %bb5.i.i
  %4 = getelementptr i8, ptr %_6.i.i, i64 8
  %_6.val7.i.i = load ptr, ptr %4, align 8, !alias.scope !26, !nonnull !4, !noundef !4
  tail call void @__rust_dealloc(ptr noundef nonnull %_6.val7.i.i, i64 noundef %_6.val.i.i, i64 noundef 1) #20, !noalias !26
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he8101475e78ad32cE.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he8101475e78ad32cE.exit.i.i": ; preds = %bb2.i.i.i4.i.i.i.i, %bb5.i.i
  %_7.i.i = icmp eq i64 %2, %_1.val1
  br i1 %_7.i.i, label %bb4, label %bb5.i.i

bb4:                                              ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he8101475e78ad32cE.exit.i.i", %start
  %_1.val4 = load i64, ptr %_1, align 8
  %5 = icmp eq i64 %_1.val4, 0
  br i1 %5, label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17hd5d9c2fc904101c2E.exit7", label %bb2.i.i.i6

bb2.i.i.i6:                                       ; preds = %bb4
  %6 = mul nuw i64 %_1.val4, 24
  tail call void @__rust_dealloc(ptr noundef nonnull %_1.val, i64 noundef %6, i64 noundef 8) #20
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17hd5d9c2fc904101c2E.exit7"

"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17hd5d9c2fc904101c2E.exit7": ; preds = %bb4, %bb2.i.i.i6
  ret void
}

; rand::rngs::adapter::reseeding::ReseedingCore<R,Rsdr>::reseed_and_generate
; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN4rand4rngs7adapter9reseeding29ReseedingCore$LT$R$C$Rsdr$GT$19reseed_and_generate17h3ca4ed8645b1d752E"(ptr noalias noundef align 16 dereferenceable(80) %self, ptr noalias noundef align 4 dereferenceable(256) %results, i64 noundef %global_fork_counter) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_10.i.i = alloca [32 x i8], align 1
  %seed.i.i = alloca [32 x i8], align 1
  %_2.i = alloca [64 x i8], align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %_2.i), !noalias !29
  %_3.i = getelementptr inbounds i8, ptr %self, i64 72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %seed.i.i), !noalias !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %seed.i.i, i8 0, i64 32, i1 false), !alias.scope !36, !noalias !32
; call <rand_core::os::OsRng as rand_core::RngCore>::try_fill_bytes
  %0 = call { ptr, ptr } @"_ZN59_$LT$rand_core..os..OsRng$u20$as$u20$rand_core..RngCore$GT$14try_fill_bytes17hb85bb1f52fadcb67E"(ptr noalias noundef nonnull align 1 %_3.i, ptr noalias noundef nonnull align 1 %seed.i.i, i64 noundef 32), !noalias !39
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = icmp eq ptr %1, null
  br i1 %2, label %"_ZN4rand4rngs7adapter9reseeding29ReseedingCore$LT$R$C$Rsdr$GT$6reseed17h45e0e937f83f4bc3E.exit.thread", label %bb2

"_ZN4rand4rngs7adapter9reseeding29ReseedingCore$LT$R$C$Rsdr$GT$6reseed17h45e0e937f83f4bc3E.exit.thread": ; preds = %start
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_10.i.i), !noalias !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %_10.i.i, ptr noundef nonnull align 1 dereferenceable(32) %seed.i.i, i64 32, i1 false), !noalias !32
  %3 = getelementptr inbounds i8, ptr %_2.i, i64 16
; call rand_chacha::guts::init_chacha
  call void @_ZN11rand_chacha4guts11init_chacha17h7d486d0c2c248776E(ptr noalias nocapture noundef nonnull sret([48 x i8]) align 16 dereferenceable(48) %3, ptr noalias noundef nonnull readonly align 1 dereferenceable(32) %_10.i.i, ptr noalias noundef nonnull readonly align 1 @alloc_85fc59111fd0cef7ef4093da3840b035, i64 noundef 8)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_10.i.i), !noalias !32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %seed.i.i), !noalias !32
  %4 = getelementptr inbounds i8, ptr %self, i64 48
  %_3.i.i = load i64, ptr %4, align 16, !alias.scope !29, !noalias !42, !noundef !4
  %5 = getelementptr inbounds i8, ptr %self, i64 56
  store i64 %_3.i.i, ptr %5, align 8, !alias.scope !29, !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %self, ptr noundef nonnull align 16 dereferenceable(48) %3, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_2.i), !noalias !29
  br label %bb5

bb2:                                              ; preds = %start
  %6 = extractvalue { ptr, ptr } %0, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %seed.i.i), !noalias !32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_2.i), !noalias !29
  %7 = icmp ne ptr %6, null
  call void @llvm.assume(i1 %7)
  %8 = load ptr, ptr %6, align 8, !invariant.load !4
  %.not.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i, label %bb3.i.i, label %is_not_null.i.i

is_not_null.i.i:                                  ; preds = %bb2
  invoke void %8(ptr noundef nonnull align 1 %1)
          to label %bb3.i.i unwind label %cleanup.i.i

bb3.i.i:                                          ; preds = %is_not_null.i.i, %bb2
  %9 = getelementptr inbounds i8, ptr %6, i64 8
  %10 = load i64, ptr %9, align 8, !range !45, !invariant.load !4
  %11 = getelementptr inbounds i8, ptr %6, i64 16
  %12 = load i64, ptr %11, align 8, !range !46, !invariant.load !4
  %13 = icmp ult i64 %12, -9223372036854775807
  call void @llvm.assume(i1 %13)
  %14 = icmp eq i64 %10, 0
  br i1 %14, label %bb5, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd2c5753dfa0c7a41E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd2c5753dfa0c7a41E.exit.i.i.i": ; preds = %bb3.i.i
  call void @__rust_dealloc(ptr noundef nonnull %1, i64 noundef %10, i64 noundef %12) #20
  br label %bb5

cleanup.i.i:                                      ; preds = %is_not_null.i.i
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = getelementptr inbounds i8, ptr %6, i64 8
  %17 = load i64, ptr %16, align 8, !range !45, !invariant.load !4
  %18 = getelementptr inbounds i8, ptr %6, i64 16
  %19 = load i64, ptr %18, align 8, !range !46, !invariant.load !4
  %20 = icmp ult i64 %19, -9223372036854775807
  call void @llvm.assume(i1 %20)
  %21 = icmp eq i64 %17, 0
  br i1 %21, label %bb1.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd2c5753dfa0c7a41E.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd2c5753dfa0c7a41E.exit.i4.i.i": ; preds = %cleanup.i.i
  call void @__rust_dealloc(ptr noundef nonnull %1, i64 noundef %17, i64 noundef %19) #20
  br label %bb1.i.i

bb1.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd2c5753dfa0c7a41E.exit.i4.i.i", %cleanup.i.i
  resume { ptr, i32 } %15

bb5:                                              ; preds = %"_ZN4rand4rngs7adapter9reseeding29ReseedingCore$LT$R$C$Rsdr$GT$6reseed17h45e0e937f83f4bc3E.exit.thread", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd2c5753dfa0c7a41E.exit.i.i.i", %bb3.i.i
  %22 = getelementptr inbounds i8, ptr %self, i64 64
  store i64 %global_fork_counter, ptr %22, align 16
  %23 = getelementptr inbounds i8, ptr %self, i64 48
  %_11 = load i64, ptr %23, align 16, !noundef !4
  %24 = getelementptr inbounds i8, ptr %self, i64 56
  %25 = add i64 %_11, -256
  store i64 %25, ptr %24, align 8
; call rand_chacha::guts::refill_wide
  call void @_ZN11rand_chacha4guts11refill_wide17h493d2c55ea6d2504E(ptr noalias noundef nonnull align 16 dereferenceable(48) %self, i32 noundef 6, ptr noalias noundef nonnull align 1 dereferenceable(256) %results)
  ret void
}

; alloc::rc::Rc<T,A>::drop_slow
; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1e7129d4bbbb8ba8E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %self) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_14.i.i = icmp eq ptr %_3, inttoptr (i64 -1 to ptr)
  br i1 %_14.i.i, label %"_ZN4core3ptr209drop_in_place$LT$alloc..rc..Weak$LT$core..cell..UnsafeCell$LT$rand..rngs..adapter..reseeding..ReseedingRng$LT$rand_chacha..chacha..ChaCha12Core$C$rand_core..os..OsRng$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17ha349265980317165E.exit", label %bb7.i.i

bb7.i.i:                                          ; preds = %start
  %_20.i.i = getelementptr inbounds i8, ptr %_3, i64 8
  %_0.i.i.i = load i64, ptr %_20.i.i, align 8, !noundef !4
  %val.i.i = add i64 %_0.i.i.i, -1
  store i64 %val.i.i, ptr %_20.i.i, align 8
  %0 = icmp eq i64 %val.i.i, 0
  br i1 %0, label %bb1.i.i, label %"_ZN4core3ptr209drop_in_place$LT$alloc..rc..Weak$LT$core..cell..UnsafeCell$LT$rand..rngs..adapter..reseeding..ReseedingRng$LT$rand_chacha..chacha..ChaCha12Core$C$rand_core..os..OsRng$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17ha349265980317165E.exit"

bb1.i.i:                                          ; preds = %bb7.i.i
  tail call void @__rust_dealloc(ptr noundef nonnull %_3, i64 noundef 368, i64 noundef 16) #20
  br label %"_ZN4core3ptr209drop_in_place$LT$alloc..rc..Weak$LT$core..cell..UnsafeCell$LT$rand..rngs..adapter..reseeding..ReseedingRng$LT$rand_chacha..chacha..ChaCha12Core$C$rand_core..os..OsRng$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17ha349265980317165E.exit"

"_ZN4core3ptr209drop_in_place$LT$alloc..rc..Weak$LT$core..cell..UnsafeCell$LT$rand..rngs..adapter..reseeding..ReseedingRng$LT$rand_chacha..chacha..ChaCha12Core$C$rand_core..os..OsRng$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17ha349265980317165E.exit": ; preds = %start, %bb7.i.i, %bb1.i.i
  ret void
}

; alloc::raw_vec::finish_grow
; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17h34b5c012761f6c83E(ptr dead_on_unwind noalias nocapture noundef writable writeonly align 8 dereferenceable(24) %_0, i64 noundef range(i64 1, -9223372036854775807) %0, i64 noundef %1, ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %current_memory) unnamed_addr #4 {
start:
  %2 = getelementptr inbounds i8, ptr %current_memory, i64 8
  %3 = load i64, ptr %2, align 8, !range !47, !noundef !4
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb2, label %bb3

bb3:                                              ; preds = %start
  %ptr = load ptr, ptr %current_memory, align 8, !nonnull !4, !noundef !4
  %5 = getelementptr inbounds i8, ptr %current_memory, i64 16
  %6 = load i64, ptr %5, align 8, !noundef !4
  %cond = icmp eq i64 %3, %0
  tail call void @llvm.assume(i1 %cond)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %bb2.i.i, label %bb3.i.i

bb2.i.i:                                          ; preds = %bb3
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %bb2.i.i.i, label %bb4.i.i.i

bb2.i.i.i:                                        ; preds = %bb2.i.i
  %ptr4.i.i.i = getelementptr i8, ptr null, i64 %0
  br label %bb6

bb4.i.i.i:                                        ; preds = %bb2.i.i
  %9 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  %_0.i.i.i.i = tail call noalias noundef ptr @__rust_alloc(i64 noundef %1, i64 noundef %0) #20
  br label %bb6

bb3.i.i:                                          ; preds = %bb3
  %cond.i.i = icmp ule i64 %6, %1
  tail call void @llvm.assume(i1 %cond.i.i)
  %10 = tail call noundef ptr @__rust_realloc(ptr noundef nonnull %ptr, i64 noundef %6, i64 noundef %0, i64 noundef %1) #20
  br label %bb6

bb2:                                              ; preds = %start
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %bb2.i.i14, label %bb4.i.i12

bb2.i.i14:                                        ; preds = %bb2
  %ptr4.i.i = getelementptr i8, ptr null, i64 %0
  br label %bb6

bb4.i.i12:                                        ; preds = %bb2
  %12 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  %_0.i.i.i = tail call noalias noundef ptr @__rust_alloc(i64 noundef %1, i64 noundef %0) #20
  br label %bb6

bb6:                                              ; preds = %bb4.i.i12, %bb2.i.i14, %bb3.i.i, %bb4.i.i.i, %bb2.i.i.i
  %_0.sroa.0.0.i.i13.pn = phi ptr [ %10, %bb3.i.i ], [ %ptr4.i.i.i, %bb2.i.i.i ], [ %_0.i.i.i.i, %bb4.i.i.i ], [ %ptr4.i.i, %bb2.i.i14 ], [ %_0.i.i.i, %bb4.i.i12 ]
  %13 = icmp eq ptr %_0.sroa.0.0.i.i13.pn, null
  %14 = inttoptr i64 %0 to ptr
  %spec.select = select i1 %13, ptr %14, ptr %_0.sroa.0.0.i.i13.pn
  %spec.select4 = zext i1 %13 to i64
  %15 = getelementptr inbounds i8, ptr %_0, i64 8
  store ptr %spec.select, ptr %15, align 8
  %16 = getelementptr inbounds i8, ptr %_0, i64 16
  store i64 %1, ptr %16, align 8
  store i64 %spec.select4, ptr %_0, align 8
  ret void
}

; alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hde762bcb017f6a82E"(ptr noalias nocapture noundef align 8 dereferenceable(16) %slf, i64 noundef %len, i64 noundef %additional, i64 noundef range(i64 1, -9223372036854775807) %elem_layout.0, i64 noundef %elem_layout.1) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %_25.i = alloca [24 x i8], align 8
  %self6.i = alloca [24 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %0 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %len, i64 %additional)
  %_31.1.i = extractvalue { i64, i1 } %0, 1
  br i1 %_31.1.i, label %bb2, label %bb11.i, !prof !51

bb11.i:                                           ; preds = %start
  %_32.i = add nuw i64 %additional, %len
  %_14.i = load i64, ptr %slf, align 8, !alias.scope !48, !noundef !4
  %v111.i = shl i64 %_14.i, 1
  %_0.sroa.0.0.sroa.speculated.i.i = tail call noundef i64 @llvm.umax.i64(i64 %v111.i, i64 %_32.i)
  %_0.sroa.0.0.sroa.speculated.i40.i = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.sroa.speculated.i.i, i64 4)
  %align_m1.i.i = add i64 %elem_layout.0, -1
  %_14.i.i = add nuw i64 %align_m1.i.i, %elem_layout.1
  %_16.i.i = sub i64 0, %elem_layout.0
  %new_size.i.i = and i64 %_14.i.i, %_16.i.i
  %1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %new_size.i.i, i64 %_0.sroa.0.0.sroa.speculated.i40.i)
  %_9.0.i.i.i = extractvalue { i64, i1 } %1, 0
  %_9.1.i.i.i = extractvalue { i64, i1 } %1, 1
  %_15.i.i.i = sub nuw i64 -9223372036854775808, %elem_layout.0
  %_14.i.i.i = icmp ugt i64 %_9.0.i.i.i, %_15.i.i.i
  %2 = select i1 %_9.1.i.i.i, i1 true, i1 %_14.i.i.i
  br i1 %2, label %bb2, label %bb22.i

bb22.i:                                           ; preds = %bb11.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %self6.i), !noalias !48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_25.i), !noalias !48
  %3 = getelementptr inbounds i8, ptr %slf, i64 8
  %4 = icmp eq i64 %_14.i, 0
  br i1 %4, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8d4a34e63a9d7fadE.exit.i", label %bb4.i.i

bb4.i.i:                                          ; preds = %bb22.i
  %self.val38.i = load ptr, ptr %3, align 8, !alias.scope !48, !nonnull !4, !noundef !4
  %5 = mul nuw i64 %_14.i, %elem_layout.1
  store ptr %self.val38.i, ptr %_25.i, align 8, !alias.scope !52, !noalias !48
  %_13.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds i8, ptr %_25.i, i64 16
  store i64 %5, ptr %_13.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !52, !noalias !48
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8d4a34e63a9d7fadE.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8d4a34e63a9d7fadE.exit.i": ; preds = %bb4.i.i, %bb22.i
  %.sink.i.i = phi i64 [ %elem_layout.0, %bb4.i.i ], [ 0, %bb22.i ]
  %6 = getelementptr inbounds i8, ptr %_25.i, i64 8
  store i64 %.sink.i.i, ptr %6, align 8, !alias.scope !52, !noalias !48
; call alloc::raw_vec::finish_grow
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h34b5c012761f6c83E(ptr noalias nocapture noundef nonnull align 8 dereferenceable(24) %self6.i, i64 noundef %elem_layout.0, i64 noundef %_9.0.i.i.i, ptr noalias nocapture noundef nonnull readonly align 8 dereferenceable(24) %_25.i), !noalias !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_25.i), !noalias !48
  %_52.i = load i64, ptr %self6.i, align 8, !range !55, !noalias !48, !noundef !4
  %trunc.i = trunc nuw i64 %_52.i to i1
  %7 = getelementptr inbounds i8, ptr %self6.i, i64 8
  br i1 %trunc.i, label %bb23.i, label %bb3

bb23.i:                                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8d4a34e63a9d7fadE.exit.i"
  %e.0.i = load i64, ptr %7, align 8, !range !47, !noalias !48, !noundef !4
  %8 = getelementptr inbounds i8, ptr %self6.i, i64 16
  %e.1.i = load i64, ptr %8, align 8, !noalias !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self6.i), !noalias !48
  br label %bb2

bb2:                                              ; preds = %bb23.i, %start, %bb11.i
  %_0.sroa.6.0.i.ph = phi i64 [ undef, %bb11.i ], [ undef, %start ], [ %e.1.i, %bb23.i ]
  %_0.sroa.0.0.i.ph = phi i64 [ 0, %bb11.i ], [ 0, %start ], [ %e.0.i, %bb23.i ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h440b0d663dfeaaa6E(i64 noundef %_0.sroa.0.0.i.ph, i64 %_0.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_4892b468f6f903dcc7427b94f1520654) #21
  unreachable

bb3:                                              ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8d4a34e63a9d7fadE.exit.i"
  %v.015.i = load ptr, ptr %7, align 8, !noalias !48, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self6.i), !noalias !48
  store ptr %v.015.i, ptr %3, align 8, !alias.scope !48
  store i64 %_0.sroa.0.0.sroa.speculated.i40.i, ptr %slf, align 8, !alias.scope !48
  ret void
}

; <alloc::string::String as core::fmt::Display>::fmt
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17he0b73bb99c26871aE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8, !noundef !4
; call <str as core::fmt::Display>::fmt
  %_0 = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h22409d91b7412b76E"(ptr noalias noundef nonnull readonly align 1 %self1, i64 noundef %len, ptr noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %_0
}

; array_sum::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN9array_sum4main17hce50e5e6a7caecb0E() unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_11.i.i.i.i = alloca [24 x i8], align 8
  %_3.i.i.i.i = alloca [24 x i8], align 8
  %_19.i.i = alloca [32 x i8], align 8
  %_8.i.i = alloca [24 x i8], align 8
  %_3.i.i = alloca [24 x i8], align 8
  %vector.i.i = alloca [24 x i8], align 8
  %_87 = alloca [48 x i8], align 8
  %_51 = alloca [32 x i8], align 8
  %_49 = alloca [48 x i8], align 8
  %_46 = alloca [16 x i8], align 8
  %_44 = alloca [48 x i8], align 8
  %sum = alloca [4 x i8], align 4
  %time_elapsed = alloca [8 x i8], align 8
  %end_time = alloca [16 x i8], align 8
  %start_time = alloca [16 x i8], align 8
  %rng = alloca [8 x i8], align 8
  %size = alloca [8 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %_5 = alloca [48 x i8], align 8
  %_2 = alloca [32 x i8], align 8
  %args = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args)
; call std::env::args
  call void @_ZN3std3env4args17hf4a046e0c9f8be25E(ptr noalias nocapture noundef nonnull sret([32 x i8]) align 8 dereferenceable(32) %_2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %vector.i.i), !noalias !66
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_3.i.i), !noalias !66
; invoke <std::env::Args as core::iter::traits::iterator::Iterator>::next
  invoke void @"_ZN73_$LT$std..env..Args$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb97f91f018a1a8bfE"(ptr noalias nocapture noundef nonnull sret([24 x i8]) align 8 dereferenceable(24) %_3.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %_2)
          to label %bb1.i.i unwind label %cleanup.i.i, !noalias !67

cleanup.i.i:                                      ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  br label %bb10.i.i

bb1.i.i:                                          ; preds = %start
  %1 = load i64, ptr %_3.i.i, align 8, !range !47, !noalias !66, !noundef !4
  %2 = icmp eq i64 %1, -9223372036854775808
  br i1 %2, label %bb12.i.i, label %bb3.i.i

bb12.i.i:                                         ; preds = %bb1.i.i
  store i64 0, ptr %args, align 8, !alias.scope !67, !noalias !68
  %3 = getelementptr inbounds i8, ptr %args, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %3, align 8, !alias.scope !67, !noalias !68
  %4 = getelementptr inbounds i8, ptr %args, i64 16
  store i64 0, ptr %4, align 8, !alias.scope !67, !noalias !68
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3.i.i), !noalias !66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vector.i.i), !noalias !66
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %5 = getelementptr inbounds i8, ptr %_2, i64 8
  %self2.i.i.i.i.i.i.i = load ptr, ptr %5, align 8, !alias.scope !84, !noalias !67, !nonnull !4, !noundef !4
  %6 = getelementptr inbounds i8, ptr %_2, i64 24
  %self.val3.i.i.i.i.i.i.i = load ptr, ptr %6, align 8, !alias.scope !84, !noalias !67, !nonnull !4, !noundef !4
  %7 = ptrtoint ptr %self.val3.i.i.i.i.i.i.i to i64
  %8 = ptrtoint ptr %self2.i.i.i.i.i.i.i to i64
  %9 = sub nuw i64 %7, %8
  %10 = udiv exact i64 %9, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %_710.i.i.i.i.i.i.i.i = icmp eq ptr %self.val3.i.i.i.i.i.i.i, %self2.i.i.i.i.i.i.i
  br i1 %_710.i.i.i.i.i.i.i.i, label %bb1.i.i.i.i.i.i.i, label %bb5.i.i.i.i.i.i.i.i

bb5.i.i.i.i.i.i.i.i:                              ; preds = %bb12.i.i, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i.i.i.i"
  %_3.sroa.0.011.i.i.i.i.i.i.i.i = phi i64 [ %11, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb12.i.i ]
  %_6.i.i.i.i.i.i.i.i = getelementptr inbounds [0 x %"std::ffi::os_str::OsString"], ptr %self2.i.i.i.i.i.i.i, i64 0, i64 %_3.sroa.0.011.i.i.i.i.i.i.i.i
  %11 = add nuw i64 %_3.sroa.0.011.i.i.i.i.i.i.i.i, 1
  %_6.val.i.i.i.i.i.i.i.i = load i64, ptr %_6.i.i.i.i.i.i.i.i, align 8, !alias.scope !85, !noalias !88
  %12 = icmp eq i64 %_6.val.i.i.i.i.i.i.i.i, 0
  br i1 %12, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i.i.i.i", label %bb2.i.i.i4.i.i.i.i.i.i.i.i.i.i.i

bb2.i.i.i4.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb5.i.i.i.i.i.i.i.i
  %13 = getelementptr i8, ptr %_6.i.i.i.i.i.i.i.i, i64 8
  %_6.val7.i.i.i.i.i.i.i.i = load ptr, ptr %13, align 8, !alias.scope !85, !noalias !88, !nonnull !4, !noundef !4
  call void @__rust_dealloc(ptr noundef nonnull %_6.val7.i.i.i.i.i.i.i.i, i64 noundef %_6.val.i.i.i.i.i.i.i.i, i64 noundef 1) #20, !noalias !89
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb2.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, %bb5.i.i.i.i.i.i.i.i
  %_7.i.i.i.i.i.i.i.i = icmp eq i64 %11, %10
  br i1 %_7.i.i.i.i.i.i.i.i, label %bb1.i.i.i.i.i.i.i, label %bb5.i.i.i.i.i.i.i.i

bb1.i.i.i.i.i.i.i:                                ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i.i.i.i", %bb12.i.i
  %14 = getelementptr inbounds i8, ptr %_2, i64 16
  %capacity1.i.i5.i.i.i.i.i.i.i = load i64, ptr %14, align 8, !alias.scope !84, !noalias !67, !noundef !4
  %15 = icmp eq i64 %capacity1.i.i5.i.i.i.i.i.i.i, 0
  br i1 %15, label %bb1.thread, label %bb2.i.i.i.i.i6.i.i.i.i.i.i.i

bb2.i.i.i.i.i6.i.i.i.i.i.i.i:                     ; preds = %bb1.i.i.i.i.i.i.i
  %ptr.i.i7.i.i.i.i.i.i.i = load ptr, ptr %_2, align 8, !alias.scope !84, !noalias !67, !nonnull !4, !noundef !4
  %16 = mul nuw i64 %capacity1.i.i5.i.i.i.i.i.i.i, 24
  call void @__rust_dealloc(ptr noundef nonnull %ptr.i.i7.i.i.i.i.i.i.i, i64 noundef %16, i64 noundef 8) #20, !noalias !88
  br label %bb1.thread

bb3.i.i:                                          ; preds = %bb1.i.i
  %element.sroa.5.0._3.sroa_idx.i.i = getelementptr inbounds i8, ptr %_3.i.i, i64 8
  %element.sroa.5.0.copyload.i.i = load ptr, ptr %element.sroa.5.0._3.sroa_idx.i.i, align 8, !noalias !66
  %element.sroa.6.0._3.sroa_idx.i.i = getelementptr inbounds i8, ptr %_3.i.i, i64 16
  %element.sroa.6.0.copyload.i.i = load i64, ptr %element.sroa.6.0._3.sroa_idx.i.i, align 8, !noalias !66
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_8.i.i), !noalias !66
; invoke <std::env::Args as core::iter::traits::iterator::Iterator>::size_hint
  invoke void @"_ZN73_$LT$std..env..Args$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h238855071e9006b0E"(ptr noalias nocapture noundef nonnull sret([24 x i8]) align 8 dereferenceable(24) %_8.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %_2)
          to label %bb14.i.i unwind label %cleanup2.i.i, !noalias !67

cleanup2.i.i:                                     ; preds = %bb3.i.i.i, %bb3.i.i
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = icmp eq i64 %1, 0
  br i1 %18, label %bb10.i.i, label %bb2.i.i.i4.i.i.i.i

bb2.i.i.i4.i.i.i.i:                               ; preds = %cleanup2.i.i
  %19 = icmp ne ptr %element.sroa.5.0.copyload.i.i, null
  call void @llvm.assume(i1 %19)
  call void @__rust_dealloc(ptr noundef nonnull %element.sroa.5.0.copyload.i.i, i64 noundef %1, i64 noundef 1) #20, !noalias !67
  br label %bb10.i.i

bb14.i.i:                                         ; preds = %bb3.i.i
  %lower.i.i = load i64, ptr %_8.i.i, align 8, !noalias !66, !noundef !4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_8.i.i), !noalias !66
  %20 = call i64 @llvm.uadd.sat.i64(i64 %lower.i.i, i64 1)
  %_0.sroa.0.0.sroa.speculated.i.i.i = call noundef i64 @llvm.umax.i64(i64 %20, i64 4)
  %21 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_0.sroa.0.0.sroa.speculated.i.i.i, i64 24)
  %_9.0.i.i.i.i.i.i = extractvalue { i64, i1 } %21, 0
  %_9.1.i.i.i.i.i.i = extractvalue { i64, i1 } %21, 1
  %_14.i.i.i.i.i.i = icmp ugt i64 %_9.0.i.i.i.i.i.i, 9223372036854775800
  %22 = or i1 %_9.1.i.i.i.i.i.i, %_14.i.i.i.i.i.i
  br i1 %22, label %bb3.i.i.i, label %bb18.i.i.i.i

bb18.i.i.i.i:                                     ; preds = %bb14.i.i
  %23 = icmp eq i64 %_9.0.i.i.i.i.i.i, 0
  br i1 %23, label %bb15.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h22560a677d78af63E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h22560a677d78af63E.exit.i.i.i.i": ; preds = %bb18.i.i.i.i
  %24 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !90
  %_0.i.i.i.i.i.i.i = call noalias noundef align 8 ptr @__rust_alloc(i64 noundef %_9.0.i.i.i.i.i.i, i64 noundef 8) #20, !noalias !93
  %25 = icmp eq ptr %_0.i.i.i.i.i.i.i, null
  br i1 %25, label %bb3.i.i.i, label %bb15.i.i

bb3.i.i.i:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h22560a677d78af63E.exit.i.i.i.i", %bb14.i.i
  %_4.sroa.4.0.i.i.i = phi i64 [ 0, %bb14.i.i ], [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h22560a677d78af63E.exit.i.i.i.i" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h440b0d663dfeaaa6E(i64 noundef %_4.sroa.4.0.i.i.i, i64 %_9.0.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_1c42992998313cbe7715ffca55c09a5f) #21
          to label %.noexc.i.i unwind label %cleanup2.i.i, !noalias !67

.noexc.i.i:                                       ; preds = %bb3.i.i.i
  unreachable

bb15.i.i:                                         ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h22560a677d78af63E.exit.i.i.i.i", %bb18.i.i.i.i
  %_4.sroa.4.0.ph.i.i.i = phi i64 [ %_0.sroa.0.0.sroa.speculated.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h22560a677d78af63E.exit.i.i.i.i" ], [ 0, %bb18.i.i.i.i ]
  %_4.sroa.10.0.ph.i.i.i = phi ptr [ %_0.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h22560a677d78af63E.exit.i.i.i.i" ], [ inttoptr (i64 8 to ptr), %bb18.i.i.i.i ]
  %_8.i.i.i = icmp uge i64 %_4.sroa.4.0.ph.i.i.i, %_0.sroa.0.0.sroa.speculated.i.i.i
  call void @llvm.assume(i1 %_8.i.i.i)
  store i64 %1, ptr %_4.sroa.10.0.ph.i.i.i, align 8, !noalias !67
  %src.sroa.2.0._26.1.sroa_idx.i.i = getelementptr inbounds i8, ptr %_4.sroa.10.0.ph.i.i.i, i64 8
  store ptr %element.sroa.5.0.copyload.i.i, ptr %src.sroa.2.0._26.1.sroa_idx.i.i, align 8, !noalias !67
  %src.sroa.3.0._26.1.sroa_idx.i.i = getelementptr inbounds i8, ptr %_4.sroa.10.0.ph.i.i.i, i64 16
  store i64 %element.sroa.6.0.copyload.i.i, ptr %src.sroa.3.0._26.1.sroa_idx.i.i, align 8, !noalias !67
  store i64 %_4.sroa.4.0.ph.i.i.i, ptr %vector.i.i, align 8, !noalias !66
  %vector1.sroa.4.0.vector.sroa_idx.i.i = getelementptr inbounds i8, ptr %vector.i.i, i64 8
  store ptr %_4.sroa.10.0.ph.i.i.i, ptr %vector1.sroa.4.0.vector.sroa_idx.i.i, align 8, !noalias !66
  %vector1.sroa.6.0.vector.sroa_idx.i.i = getelementptr inbounds i8, ptr %vector.i.i, i64 16
  store i64 1, ptr %vector1.sroa.6.0.vector.sroa_idx.i.i, align 8, !noalias !66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3.i.i), !noalias !66
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_19.i.i), !noalias !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_19.i.i, ptr noundef nonnull align 8 dereferenceable(32) %_2, i64 32, i1 false), !noalias !67
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %element.sroa.5.0._3.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %_3.i.i.i.i, i64 8
  %element.sroa.6.0._3.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %_3.i.i.i.i, i64 16
  br label %bb1.i.i.i.i

bb1.i.i.i.i:                                      ; preds = %bb8.i.i.i.i, %bb15.i.i
  %self2.i.i11.i.i = phi ptr [ %self2.i.i.i.i, %bb8.i.i.i.i ], [ %_4.sroa.10.0.ph.i.i.i, %bb15.i.i ]
  %len.i.i.i.i = phi i64 [ %new_len.i.i.i.i, %bb8.i.i.i.i ], [ 1, %bb15.i.i ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_3.i.i.i.i), !noalias !104
; invoke <std::env::Args as core::iter::traits::iterator::Iterator>::next
  invoke void @"_ZN73_$LT$std..env..Args$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb97f91f018a1a8bfE"(ptr noalias nocapture noundef nonnull sret([24 x i8]) align 8 dereferenceable(24) %_3.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %_19.i.i)
          to label %bb2.i.i7.i.i unwind label %cleanup.i.i.i.i, !noalias !105

bb12.i.i.i.i:                                     ; preds = %bb2.i.i.i4.i.i.i.i.i.i, %cleanup1.i.i.i.i, %cleanup.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %26, %cleanup.i.i.i.i ], [ %30, %cleanup1.i.i.i.i ], [ %30, %bb2.i.i.i4.i.i.i.i.i.i ]
; call core::ptr::drop_in_place<std::env::Args>
  call fastcc void @"_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hbd2058f8880fb0a9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %_19.i.i) #22, !noalias !105
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hf2582b2c8b5658a9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %vector.i.i) #22, !noalias !67
  br label %common.resume

cleanup.i.i.i.i:                                  ; preds = %bb1.i.i.i.i
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %bb12.i.i.i.i

bb2.i.i7.i.i:                                     ; preds = %bb1.i.i.i.i
  %27 = load i64, ptr %_3.i.i.i.i, align 8, !range !47, !noalias !104, !noundef !4
  %28 = icmp eq i64 %27, -9223372036854775808
  br i1 %28, label %bb10.i.i.i.i, label %bb3.i.i.i.i

bb3.i.i.i.i:                                      ; preds = %bb2.i.i7.i.i
  %element.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %element.sroa.5.0._3.sroa_idx.i.i.i.i, align 8, !noalias !104
  %element.sroa.6.0.copyload.i.i.i.i = load i64, ptr %element.sroa.6.0._3.sroa_idx.i.i.i.i, align 8, !noalias !104
  %29 = load i64, ptr %vector.i.i, align 8, !alias.scope !106, !noalias !107, !noundef !4
  %_8.i.i.i.i = icmp eq i64 %len.i.i.i.i, %29
  br i1 %_8.i.i.i.i, label %bb4.i.i.i.i, label %bb8.i.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb3.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_11.i.i.i.i), !noalias !104
; invoke <std::env::Args as core::iter::traits::iterator::Iterator>::size_hint
  invoke void @"_ZN73_$LT$std..env..Args$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h238855071e9006b0E"(ptr noalias nocapture noundef nonnull sret([24 x i8]) align 8 dereferenceable(24) %_11.i.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %_19.i.i)
          to label %bb1.i.i.i.i.i unwind label %cleanup1.i.i.i.i, !noalias !105

bb8.i.i.i.i:                                      ; preds = %bb1.i.i.i.bb8.i.i_crit_edge.i.i, %bb3.i.i.i.i
  %self2.i.i.i.i = phi ptr [ %self2.i.i.pre.i.i, %bb1.i.i.i.bb8.i.i_crit_edge.i.i ], [ %self2.i.i11.i.i, %bb3.i.i.i.i ]
  %dst.i.i.i.i = getelementptr inbounds %"alloc::string::String", ptr %self2.i.i.i.i, i64 %len.i.i.i.i
  store i64 %27, ptr %dst.i.i.i.i, align 8, !noalias !105
  %src.sroa.2.0.dst.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %dst.i.i.i.i, i64 8
  store ptr %element.sroa.5.0.copyload.i.i.i.i, ptr %src.sroa.2.0.dst.sroa_idx.i.i.i.i, align 8, !noalias !105
  %src.sroa.3.0.dst.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %dst.i.i.i.i, i64 16
  store i64 %element.sroa.6.0.copyload.i.i.i.i, ptr %src.sroa.3.0.dst.sroa_idx.i.i.i.i, align 8, !noalias !105
  %new_len.i.i.i.i = add i64 %len.i.i.i.i, 1
  store i64 %new_len.i.i.i.i, ptr %vector1.sroa.6.0.vector.sroa_idx.i.i, align 8, !alias.scope !106, !noalias !107
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3.i.i.i.i), !noalias !104
  br label %bb1.i.i.i.i

cleanup1.i.i.i.i:                                 ; preds = %bb1.i.i.i.i.i, %bb4.i.i.i.i
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = icmp eq i64 %27, 0
  br i1 %31, label %bb12.i.i.i.i, label %bb2.i.i.i4.i.i.i.i.i.i

bb2.i.i.i4.i.i.i.i.i.i:                           ; preds = %cleanup1.i.i.i.i
  %32 = icmp ne ptr %element.sroa.5.0.copyload.i.i.i.i, null
  call void @llvm.assume(i1 %32)
  call void @__rust_dealloc(ptr noundef nonnull %element.sroa.5.0.copyload.i.i.i.i, i64 noundef %27, i64 noundef 1) #20, !noalias !105
  br label %bb12.i.i.i.i

bb1.i.i.i.i.i:                                    ; preds = %bb4.i.i.i.i
  %lower.i.i.i.i = load i64, ptr %_11.i.i.i.i, align 8, !noalias !104, !noundef !4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_11.i.i.i.i), !noalias !104
  %33 = call i64 @llvm.uadd.sat.i64(i64 %lower.i.i.i.i, i64 1)
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hde762bcb017f6a82E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %vector.i.i, i64 noundef %len.i.i.i.i, i64 noundef %33, i64 noundef 8, i64 noundef 24)
          to label %bb1.i.i.i.bb8.i.i_crit_edge.i.i unwind label %cleanup1.i.i.i.i, !noalias !67

bb1.i.i.i.bb8.i.i_crit_edge.i.i:                  ; preds = %bb1.i.i.i.i.i
  %self2.i.i.pre.i.i = load ptr, ptr %vector1.sroa.4.0.vector.sroa_idx.i.i, align 8, !alias.scope !106, !noalias !107
  br label %bb8.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb2.i.i7.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3.i.i.i.i), !noalias !104
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %34 = getelementptr inbounds i8, ptr %_19.i.i, i64 8
  %self2.i.i.i.i.i.i.i.i.i = load ptr, ptr %34, align 8, !alias.scope !123, !noalias !124, !nonnull !4, !noundef !4
  %35 = getelementptr inbounds i8, ptr %_19.i.i, i64 24
  %self.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %35, align 8, !alias.scope !123, !noalias !124, !nonnull !4, !noundef !4
  %36 = ptrtoint ptr %self.val3.i.i.i.i.i.i.i.i.i to i64
  %37 = ptrtoint ptr %self2.i.i.i.i.i.i.i.i.i to i64
  %38 = sub nuw i64 %36, %37
  %39 = udiv exact i64 %38, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %_710.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %self.val3.i.i.i.i.i.i.i.i.i, %self2.i.i.i.i.i.i.i.i.i
  br i1 %_710.i.i.i.i.i.i.i.i.i.i, label %bb1.i.i.i.i.i.i.i.i.i, label %bb5.i.i.i.i.i.i.i.i.i.i

bb5.i.i.i.i.i.i.i.i.i.i:                          ; preds = %bb10.i.i.i.i, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i.i.i.i.i.i"
  %_3.sroa.0.011.i.i.i.i.i.i.i.i.i.i = phi i64 [ %40, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb10.i.i.i.i ]
  %_6.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds [0 x %"std::ffi::os_str::OsString"], ptr %self2.i.i.i.i.i.i.i.i.i, i64 0, i64 %_3.sroa.0.011.i.i.i.i.i.i.i.i.i.i
  %40 = add nuw i64 %_3.sroa.0.011.i.i.i.i.i.i.i.i.i.i, 1
  %_6.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %_6.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !125, !noalias !128
  %41 = icmp eq i64 %_6.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %41, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i.i.i.i.i.i", label %bb2.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i

bb2.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb5.i.i.i.i.i.i.i.i.i.i
  %42 = getelementptr i8, ptr %_6.i.i.i.i.i.i.i.i.i.i, i64 8
  %_6.val7.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %42, align 8, !alias.scope !125, !noalias !128, !nonnull !4, !noundef !4
  call void @__rust_dealloc(ptr noundef nonnull %_6.val7.i.i.i.i.i.i.i.i.i.i, i64 noundef %_6.val.i.i.i.i.i.i.i.i.i.i, i64 noundef 1) #20, !noalias !129
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb2.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb5.i.i.i.i.i.i.i.i.i.i
  %_7.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %40, %39
  br i1 %_7.i.i.i.i.i.i.i.i.i.i, label %bb1.i.i.i.i.i.i.i.i.i, label %bb5.i.i.i.i.i.i.i.i.i.i

bb1.i.i.i.i.i.i.i.i.i:                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h6afb36db6cf0560eE.exit.i.i.i.i.i.i.i.i.i.i", %bb10.i.i.i.i
  %43 = getelementptr inbounds i8, ptr %_19.i.i, i64 16
  %capacity1.i.i5.i.i.i.i.i.i.i.i.i = load i64, ptr %43, align 8, !alias.scope !123, !noalias !124, !noundef !4
  %44 = icmp eq i64 %capacity1.i.i5.i.i.i.i.i.i.i.i.i, 0
  br i1 %44, label %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h57badd872aff48f4E.exit", label %bb2.i.i.i.i.i6.i.i.i.i.i.i.i.i.i

bb2.i.i.i.i.i6.i.i.i.i.i.i.i.i.i:                 ; preds = %bb1.i.i.i.i.i.i.i.i.i
  %ptr.i.i7.i.i.i.i.i.i.i.i.i = load ptr, ptr %_19.i.i, align 8, !alias.scope !123, !noalias !124, !nonnull !4, !noundef !4
  %45 = mul nuw i64 %capacity1.i.i5.i.i.i.i.i.i.i.i.i, 24
  call void @__rust_dealloc(ptr noundef nonnull %ptr.i.i7.i.i.i.i.i.i.i.i.i, i64 noundef %45, i64 noundef 8) #20, !noalias !128
  br label %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h57badd872aff48f4E.exit"

common.resume:                                    ; preds = %bb12.i.i.i.i, %bb10.i.i, %bb19
  %common.resume.op = phi { ptr, i32 } [ %.pn12, %bb19 ], [ %.pn.ph.i.i, %bb10.i.i ], [ %.pn.i.i.i.i, %bb12.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb10.i.i:                                         ; preds = %bb2.i.i.i4.i.i.i.i, %cleanup2.i.i, %cleanup.i.i
  %.pn.ph.i.i = phi { ptr, i32 } [ %0, %cleanup.i.i ], [ %17, %cleanup2.i.i ], [ %17, %bb2.i.i.i4.i.i.i.i ]
; call core::ptr::drop_in_place<std::env::Args>
  call fastcc void @"_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hbd2058f8880fb0a9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %_2) #22, !noalias !67
  br label %common.resume

bb1.thread:                                       ; preds = %bb2.i.i.i.i.i6.i.i.i.i.i.i.i, %bb1.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7)
  br label %panic6

"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h57badd872aff48f4E.exit": ; preds = %bb1.i.i.i.i.i.i.i.i.i, %bb2.i.i.i.i.i6.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_19.i.i), !noalias !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %args, ptr noundef nonnull align 8 dereferenceable(24) %vector.i.i, i64 24, i1 false), !noalias !68
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vector.i.i), !noalias !66
  %.phi.trans.insert = getelementptr inbounds i8, ptr %args, i64 16
  %_3.pre = load i64, ptr %.phi.trans.insert, align 8
  %46 = getelementptr inbounds i8, ptr %args, i64 16
  %47 = icmp eq i64 %_3.pre, 2
  br i1 %47, label %bb24, label %bb1

bb1:                                              ; preds = %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h57badd872aff48f4E.exit"
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7)
  %_59.not = icmp eq i64 %_3.pre, 0
  br i1 %_59.not, label %panic6, label %bb23

bb24:                                             ; preds = %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h57badd872aff48f4E.exit"
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size)
  %48 = getelementptr inbounds i8, ptr %args, i64 8
  %_70 = load ptr, ptr %48, align 8, !nonnull !4, !noundef !4
  %49 = getelementptr inbounds i8, ptr %_70, i64 32
  %_77 = load ptr, ptr %49, align 8, !nonnull !4, !noundef !4
  %50 = getelementptr inbounds i8, ptr %_70, i64 40
  %_75 = load i64, ptr %50, align 8, !noundef !4
  switch i64 %_75, label %bb9.i [
    i64 0, label %bb29
    i64 1, label %bb7.i
  ]

bb7.i:                                            ; preds = %bb24
  %51 = load i8, ptr %_77, align 1, !alias.scope !130, !noalias !133, !noundef !4
  switch i8 %51, label %bb14.i.preheader [
    i8 43, label %bb29
    i8 45, label %bb29
  ]

bb14.i.preheader:                                 ; preds = %bb11.i, %bb41.i, %bb7.i
  %digits.sroa.0.154.i.ph = phi ptr [ %rest.0.i, %bb11.i ], [ %_77, %bb7.i ], [ %_77, %bb41.i ]
  %digits.sroa.16.153.i.ph = phi i64 [ %rest.1.i, %bb11.i ], [ 1, %bb7.i ], [ %_75, %bb41.i ]
  br label %bb14.i

bb9.i:                                            ; preds = %bb24
  %.pr.i = load i8, ptr %_77, align 1, !alias.scope !130, !noalias !133
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb11.i, label %bb41.i

bb11.i:                                           ; preds = %bb9.i
  %rest.0.i = getelementptr inbounds i8, ptr %_77, i64 1
  %rest.1.i = add i64 %_75, -1
  %52 = icmp ult i64 %_75, 18
  br i1 %52, label %bb14.i.preheader, label %bb19.i.preheader

bb19.i.preheader:                                 ; preds = %bb41.i, %bb11.i
  %digits.sroa.16.0.i.ph = phi i64 [ %rest.1.i, %bb11.i ], [ %_75, %bb41.i ]
  %digits.sroa.0.0.i.ph = phi ptr [ %rest.0.i, %bb11.i ], [ %_77, %bb41.i ]
  br label %bb19.i

bb19.i:                                           ; preds = %bb19.i.preheader, %bb25.i
  %result.sroa.0.0.i = phi i64 [ %_75.i, %bb25.i ], [ 0, %bb19.i.preheader ]
  %digits.sroa.16.0.i = phi i64 [ %rest.14.i, %bb25.i ], [ %digits.sroa.16.0.i.ph, %bb19.i.preheader ]
  %digits.sroa.0.0.i = phi ptr [ %rest.03.i, %bb25.i ], [ %digits.sroa.0.0.i.ph, %bb19.i.preheader ]
  %_35.not.i = icmp eq i64 %digits.sroa.16.0.i, 0
  br i1 %_35.not.i, label %bb30, label %bb20.i

bb41.i:                                           ; preds = %bb9.i
  %53 = icmp ult i64 %_75, 17
  br i1 %53, label %bb14.i.preheader, label %bb19.i.preheader

bb20.i:                                           ; preds = %bb19.i
  %rest.03.i = getelementptr inbounds i8, ptr %digits.sroa.0.0.i, i64 1
  %rest.14.i = add i64 %digits.sroa.16.0.i, -1
  %54 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %result.sroa.0.0.i, i64 10)
  %_71.0.i = extractvalue { i64, i1 } %54, 0
  %_44.i = load i8, ptr %digits.sroa.0.0.i, align 1, !alias.scope !130, !noalias !133, !noundef !4
  %_43.i = zext i8 %_44.i to i32
  %_14.i.i = add nsw i32 %_43.i, -48
  %_16.i.i = icmp ult i32 %_14.i.i, 10
  br i1 %_16.i.i, label %bb23.i, label %bb29

bb23.i:                                           ; preds = %bb20.i
  %_71.1.i = extractvalue { i64, i1 } %54, 1
  br i1 %_71.1.i, label %bb29, label %bb25.i

bb25.i:                                           ; preds = %bb23.i
  %x.i = zext nneg i32 %_14.i.i to i64
  %55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_71.0.i, i64 %x.i)
  %_74.1.i = extractvalue { i64, i1 } %55, 1
  %_75.i = add nuw i64 %_71.0.i, %x.i
  br i1 %_74.1.i, label %bb29, label %bb19.i

bb14.i:                                           ; preds = %bb14.i.preheader, %bb18.i
  %digits.sroa.0.154.i = phi ptr [ %rest.09.i, %bb18.i ], [ %digits.sroa.0.154.i.ph, %bb14.i.preheader ]
  %digits.sroa.16.153.i = phi i64 [ %rest.110.i, %bb18.i ], [ %digits.sroa.16.153.i.ph, %bb14.i.preheader ]
  %result.sroa.0.152.i = phi i64 [ %57, %bb18.i ], [ 0, %bb14.i.preheader ]
  %_25.i = load i8, ptr %digits.sroa.0.154.i, align 1, !alias.scope !130, !noalias !133, !noundef !4
  %_24.i = zext i8 %_25.i to i32
  %_14.i43.i = add nsw i32 %_24.i, -48
  %_16.i44.i = icmp ult i32 %_14.i43.i, 10
  br i1 %_16.i44.i, label %bb18.i, label %bb29

bb18.i:                                           ; preds = %bb14.i
  %56 = mul i64 %result.sroa.0.152.i, 10
  %rest.110.i = add nsw i64 %digits.sroa.16.153.i, -1
  %rest.09.i = getelementptr inbounds i8, ptr %digits.sroa.0.154.i, i64 1
  %_29.i = zext nneg i32 %_14.i43.i to i64
  %57 = add i64 %56, %_29.i
  %_18.not.i = icmp eq i64 %rest.110.i, 0
  br i1 %_18.not.i, label %bb30, label %bb14.i

bb19:                                             ; preds = %bb1.i.i.i, %bb18, %cleanup
  %.pn12 = phi { ptr, i32 } [ %58, %cleanup ], [ %.pn, %bb18 ], [ %.pn, %bb1.i.i.i ]
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hf2582b2c8b5658a9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %args) #22
  br label %common.resume

cleanup:                                          ; preds = %bb2.invoke, %bb23, %panic6, %bb29, %bb30
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %bb19

unreachable:                                      ; preds = %panic6
  unreachable

bb30:                                             ; preds = %bb19.i, %bb18.i
  %_19 = phi i64 [ %57, %bb18.i ], [ %result.sroa.0.0.i, %bb19.i ]
  store i64 %_19, ptr %size, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rng)
; invoke rand::rngs::thread::thread_rng
  %59 = invoke noundef nonnull ptr @_ZN4rand4rngs6thread10thread_rng17h2221524bd2af39a8E()
          to label %bb4 unwind label %cleanup

bb29:                                             ; preds = %bb20.i, %bb23.i, %bb25.i, %bb14.i, %bb24, %bb7.i, %bb7.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_87)
  store ptr @alloc_1b84144bb19ede9f36af48f53cfd8ec2, ptr %_87, align 8
  %60 = getelementptr inbounds i8, ptr %_87, i64 8
  store i64 1, ptr %60, align 8
  %61 = getelementptr inbounds i8, ptr %_87, i64 32
  store ptr null, ptr %61, align 8
  %62 = getelementptr inbounds i8, ptr %_87, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %62, align 8
  %63 = getelementptr inbounds i8, ptr %_87, i64 24
  store i64 0, ptr %63, align 8
; invoke std::io::stdio::_eprint
  invoke void @_ZN3std2io5stdio7_eprint17h5946fd4f5341b8d3E(ptr noalias nocapture noundef nonnull align 8 dereferenceable(48) %_87)
          to label %bb31 unwind label %cleanup

bb4:                                              ; preds = %bb30
  store ptr %59, ptr %rng, align 8
  %_9.0.i.i.i.i.i.i19 = shl i64 %_19, 2
  %_9.1.i.i.i.i.i.i20 = icmp ugt i64 %_19, 4611686018427387903
  %_14.i.i.i.i.i.i21 = icmp ugt i64 %_9.0.i.i.i.i.i.i19, 9223372036854775804
  %64 = or i1 %_9.1.i.i.i.i.i.i20, %_14.i.i.i.i.i.i21
  br i1 %64, label %bb3.i.i.i28, label %bb18.i.i.i.i22

bb18.i.i.i.i22:                                   ; preds = %bb4
  %65 = icmp eq i64 %_9.0.i.i.i.i.i.i19, 0
  br i1 %65, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h33935dd07ff74b32E.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h22560a677d78af63E.exit.i.i.i.i23"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h22560a677d78af63E.exit.i.i.i.i23": ; preds = %bb18.i.i.i.i22
  %66 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !135
  %_0.i.i.i.i.i.i.i24 = call noalias noundef align 4 ptr @__rust_alloc(i64 noundef %_9.0.i.i.i.i.i.i19, i64 noundef 4) #20, !noalias !135
  %67 = icmp eq ptr %_0.i.i.i.i.i.i.i24, null
  br i1 %67, label %bb3.i.i.i28, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h33935dd07ff74b32E.exit.i.i.i.i"

bb3.i.i.i28:                                      ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h22560a677d78af63E.exit.i.i.i.i23", %bb4
  %_4.sroa.4.0.i.i.i29 = phi i64 [ 0, %bb4 ], [ 4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h22560a677d78af63E.exit.i.i.i.i23" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h440b0d663dfeaaa6E(i64 noundef %_4.sroa.4.0.i.i.i29, i64 %_9.0.i.i.i.i.i.i19, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_1c42992998313cbe7715ffca55c09a5f) #21
          to label %.noexc unwind label %cleanup1

.noexc:                                           ; preds = %bb3.i.i.i28
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h33935dd07ff74b32E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h22560a677d78af63E.exit.i.i.i.i23", %bb18.i.i.i.i22
  %_4.sroa.4.0.ph.i.i.i25 = phi i64 [ %_19, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h22560a677d78af63E.exit.i.i.i.i23" ], [ 0, %bb18.i.i.i.i22 ]
  %_4.sroa.10.0.ph.i.i.i26 = phi ptr [ %_0.i.i.i.i.i.i.i24, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h22560a677d78af63E.exit.i.i.i.i23" ], [ inttoptr (i64 4 to ptr), %bb18.i.i.i.i22 ]
  %_8.i.i.i27 = icmp uge i64 %_4.sroa.4.0.ph.i.i.i25, %_19
  call void @llvm.assume(i1 %_8.i.i.i27)
  %_0.i.i.i13.i.i.i.i.i.i.i.not = icmp eq i64 %_19, 0
  br i1 %_0.i.i.i13.i.i.i.i.i.i.i.not, label %bb32, label %bb3.i.i.i.i.i.i.i.preheader

bb3.i.i.i.i.i.i.i.preheader:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h33935dd07ff74b32E.exit.i.i.i.i"
  %_5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %59, i64 16
  %68 = getelementptr inbounds i8, ptr %59, i64 272
  %_9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %59, i64 288
  %69 = getelementptr inbounds i8, ptr %59, i64 344
  %70 = getelementptr inbounds i8, ptr %59, i64 352
  br label %bb3.i.i.i.i.i.i.i

bb3.i.i.i.i.i.i.i:                                ; preds = %bb3.i.i.i.i.i.i.i.preheader, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7b9d05c3006805a3E.exit.i.i.i.i.i.i.i"
  %f.val5.i.i.i.i.i.i.i = phi i64 [ %71, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7b9d05c3006805a3E.exit.i.i.i.i.i.i.i" ], [ 0, %bb3.i.i.i.i.i.i.i.preheader ]
  %71 = add nuw i64 %f.val5.i.i.i.i.i.i.i, 1
  %_3.i1.i.i.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %68, align 16, !alias.scope !144, !noalias !147
  br label %bb7.i.i.i.i.i.i.i.i.i.i.i.i.i

bb7.i.i.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZN4rand3rng3Rng3gen17h4f64b7d9e057a575E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i
  %_3.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %74, %_ZN4rand3rng3Rng3gen17h4f64b7d9e057a575E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %_3.i1.i.i.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i ]
  %_2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %_3.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 63
  br i1 %_2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4rand3rng3Rng3gen17h4f64b7d9e057a575E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb7.i.i.i.i.i.i.i.i.i.i.i.i.i
; invoke rand::rngs::adapter::reseeding::fork::get_fork_counter
  %global_fork_counter.i.i.i.i.i.i.i.i.i.i.i6.i.i.i.i.i.i.i = invoke noundef i64 @_ZN4rand4rngs7adapter9reseeding4fork16get_fork_counter17h8844478595db5affE()
          to label %global_fork_counter.i.i.i.i.i.i.i.i.i.i.i.noexc.i.i.i.i.i.i.i unwind label %cleanup1.body.i.i, !noalias !166

global_fork_counter.i.i.i.i.i.i.i.i.i.i.i.noexc.i.i.i.i.i.i.i: ; preds = %bb2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %_5.i.i.i.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %69, align 8, !alias.scope !167, !noalias !172, !noundef !4
  %_4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %_5.i.i.i.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %_4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %global_fork_counter.i.i.i.i.i.i.i.i.i.i.i.noexc.i.i.i.i.i.i.i
  %_16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %70, align 16, !alias.scope !167, !noalias !172, !noundef !4
  %_15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = sub i64 %_16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %global_fork_counter.i.i.i.i.i.i.i.i.i.i.i6.i.i.i.i.i.i.i
  %_6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %_15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %_6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %72 = add nsw i64 %_5.i.i.i.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i, -256
  store i64 %72, ptr %69, align 8, !alias.scope !167, !noalias !172
; invoke rand_chacha::guts::refill_wide
  invoke void @_ZN11rand_chacha4guts11refill_wide17h493d2c55ea6d2504E(ptr noalias noundef nonnull align 16 dereferenceable(48) %_9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 noundef 6, ptr noalias noundef nonnull align 1 dereferenceable(256) %_5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %_ZN4rand3rng3Rng3gen17h4f64b7d9e057a575E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %cleanup1.body.i.i, !noalias !166

bb4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %global_fork_counter.i.i.i.i.i.i.i.i.i.i.i.noexc.i.i.i.i.i.i.i
; invoke rand::rngs::adapter::reseeding::ReseedingCore<R,Rsdr>::reseed_and_generate
  invoke fastcc void @"_ZN4rand4rngs7adapter9reseeding29ReseedingCore$LT$R$C$Rsdr$GT$19reseed_and_generate17h3ca4ed8645b1d752E"(ptr noalias noundef nonnull align 16 dereferenceable(80) %_9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 4 dereferenceable(256) %_5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %global_fork_counter.i.i.i.i.i.i.i.i.i.i.i6.i.i.i.i.i.i.i)
          to label %_ZN4rand3rng3Rng3gen17h4f64b7d9e057a575E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %cleanup1.body.i.i, !noalias !166

_ZN4rand3rng3Rng3gen17h4f64b7d9e057a575E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb7.i.i.i.i.i.i.i.i.i.i.i.i.i
  %_10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %_3.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb7.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %73 = getelementptr inbounds [0 x i32], ptr %_5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 0, i64 %_10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %value.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %73, align 4, !alias.scope !144, !noalias !147, !noundef !4
  %74 = add nuw nsw i64 %_10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  store i64 %74, ptr %68, align 16, !alias.scope !144, !noalias !147
  %_23.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %value.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %_22.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %_23.i.i.i.i.i.i.i.i.i.i.i.i.i, 1000
  %lo.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %_22.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %_20.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i32 %lo.i.i.i.i.i.i.i.i.i.i.i.i.i, -100663297
  br i1 %_20.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb7.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7b9d05c3006805a3E.exit.i.i.i.i.i.i.i"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7b9d05c3006805a3E.exit.i.i.i.i.i.i.i": ; preds = %_ZN4rand3rng3Rng3gen17h4f64b7d9e057a575E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %_26.i.i.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %_22.i.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %hi.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %_26.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %dst.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i32, ptr %_4.sroa.10.0.ph.i.i.i26, i64 %f.val5.i.i.i.i.i.i.i
  store i32 %hi.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %dst.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !174
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %71, %_19
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %bb32.loopexit, label %bb3.i.i.i.i.i.i.i

cleanup1.body.i.i:                                ; preds = %bb4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %75 = landingpad { ptr, i32 }
          cleanup
  %76 = shl nuw i64 %_4.sroa.4.0.ph.i.i.i25, 2
  call void @__rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.ph.i.i.i26, i64 noundef %76, i64 noundef 4) #20, !noalias !179
  br label %bb18

bb18:                                             ; preds = %bb2.i.i.i4.i, %cleanup3, %cleanup1, %cleanup1.body.i.i
  %.pn = phi { ptr, i32 } [ %78, %cleanup1 ], [ %75, %cleanup1.body.i.i ], [ %lpad.phi, %cleanup3 ], [ %lpad.phi, %bb2.i.i.i4.i ]
  %self1.val.i.i.i = load i64, ptr %59, align 8, !noalias !180, !noundef !4
  %val.i.i.i = add i64 %self1.val.i.i.i, -1
  store i64 %val.i.i.i, ptr %59, align 8, !noalias !180
  %77 = icmp eq i64 %val.i.i.i, 0
  br i1 %77, label %bb1.i.i.i, label %bb19

bb1.i.i.i:                                        ; preds = %bb18
; call alloc::rc::Rc<T,A>::drop_slow
  call fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1e7129d4bbbb8ba8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %rng)
  br label %bb19

cleanup1:                                         ; preds = %bb3.i.i.i28
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %bb18

bb32.loopexit:                                    ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7b9d05c3006805a3E.exit.i.i.i.i.i.i.i"
  %iter2.pre = load i64, ptr %size, align 8
  br label %bb32

bb32:                                             ; preds = %bb32.loopexit, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h33935dd07ff74b32E.exit.i.i.i.i"
  %_35 = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h33935dd07ff74b32E.exit.i.i.i.i" ], [ %iter2.pre, %bb32.loopexit ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %start_time)
  %79 = getelementptr inbounds i8, ptr %start_time, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %start_time, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %end_time)
  %80 = getelementptr inbounds i8, ptr %end_time, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %end_time, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %time_elapsed)
  store double 0.000000e+00, ptr %time_elapsed, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sum)
  store i32 0, ptr %sum, align 4
  %_9169.not = icmp eq i64 %_35, 0
  br i1 %_9169.not, label %bb8, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %bb32
  %_5.i.i.i.i.i = getelementptr inbounds i8, ptr %59, i64 16
  %81 = getelementptr inbounds i8, ptr %59, i64 272
  %_9.i2.i.i.i.i.i = getelementptr inbounds i8, ptr %59, i64 288
  %82 = getelementptr inbounds i8, ptr %59, i64 344
  %83 = getelementptr inbounds i8, ptr %59, i64 352
  %84 = getelementptr inbounds i8, ptr %59, i64 268
  %85 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %_35, i1 true)
  %_16.i.i.i.i = shl i64 %_35, %85
  %zone.i.i.i.i = add i64 %_16.i.i.i.i, -1
  %_27.i.i.i.i = zext i64 %_35 to i128
  br label %bb6.i.i.i.i

cleanup3.loopexit:                                ; preds = %bb10.i.i.i.i.i, %bb6.i.i.i.i.i.i.i, %bb4.i.i.i.i.i.i.i, %bb6.i.i.i.i.i, %bb6.i.i10.i.i.i.i.i, %bb4.i.i11.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup3

cleanup3.loopexit.split-lp:                       ; preds = %panic4.invoke, %bb8, %bb12
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup3

cleanup3:                                         ; preds = %cleanup3.loopexit.split-lp, %cleanup3.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup3.loopexit ], [ %lpad.loopexit.split-lp, %cleanup3.loopexit.split-lp ]
  %86 = icmp eq i64 %_4.sroa.4.0.ph.i.i.i25, 0
  br i1 %86, label %bb18, label %bb2.i.i.i4.i

bb2.i.i.i4.i:                                     ; preds = %cleanup3
  %87 = shl nuw i64 %_4.sroa.4.0.ph.i.i.i25, 2
  call void @__rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.ph.i.i.i26, i64 noundef %87, i64 noundef 4) #20
  br label %bb18

bb8:                                              ; preds = %bb38, %bb32
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_44)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_46)
  store ptr %sum, ptr %_46, align 8
  %_47.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %_46, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h91a5fd3fa6d58062E", ptr %_47.sroa.4.0..sroa_idx, align 8
  store ptr @alloc_fae7b78f3403b48b2870d7d78fcc4226, ptr %_44, align 8
  %88 = getelementptr inbounds i8, ptr %_44, i64 8
  store i64 2, ptr %88, align 8
  %89 = getelementptr inbounds i8, ptr %_44, i64 32
  store ptr null, ptr %89, align 8
  %90 = getelementptr inbounds i8, ptr %_44, i64 16
  store ptr %_46, ptr %90, align 8
  %91 = getelementptr inbounds i8, ptr %_44, i64 24
  store i64 1, ptr %91, align 8
; invoke std::io::stdio::_print
  invoke void @_ZN3std2io5stdio6_print17he9dfbe767523a89eE(ptr noalias nocapture noundef nonnull align 8 dereferenceable(48) %_44)
          to label %bb12 unwind label %cleanup3.loopexit.split-lp

bb6.i.i.i.i:                                      ; preds = %bb38, %bb7.lr.ph
  %92 = phi double [ 0.000000e+00, %bb7.lr.ph ], [ %114, %bb38 ]
  %93 = phi i32 [ 0, %bb7.lr.ph ], [ %113, %bb38 ]
  %iter.sroa.0.070 = phi i64 [ 0, %bb7.lr.ph ], [ %_0.i, %bb38 ]
  %_0.i = add nuw i64 %iter.sroa.0.070, 1
  %index.i.i.i.pre.i.i = load i64, ptr %81, align 16, !alias.scope !187, !noalias !190
  br label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %_ZN4rand3rng3Rng3gen17hc3cb4e92c2639662E.exit.i.i, %bb6.i.i.i.i
  %index.i.i.i.i.i = phi i64 [ %index.i.i.i2.i.i, %_ZN4rand3rng3Rng3gen17hc3cb4e92c2639662E.exit.i.i ], [ %index.i.i.i.pre.i.i, %bb6.i.i.i.i ]
  %_7.i.i.i.i.i = icmp ult i64 %index.i.i.i.i.i, 63
  br i1 %_7.i.i.i.i.i, label %"_ZN74_$LT$rand_core..block..BlockRng$LT$R$GT$$u20$as$u20$rand_core..RngCore$GT$8next_u6428_$u7b$$u7b$closure$u7d$$u7d$17h5a008872eccd02ceE.exit.i.i.i.i.i", label %bb5.i.i.i.i.i

bb5.i.i.i.i.i:                                    ; preds = %bb7.i.i.i.i
  %_13.not.i.i.i.i.i = icmp eq i64 %index.i.i.i.i.i, 63
  br i1 %_13.not.i.i.i.i.i, label %bb10.i.i.i.i.i, label %bb6.i.i.i.i.i

"_ZN74_$LT$rand_core..block..BlockRng$LT$R$GT$$u20$as$u20$rand_core..RngCore$GT$8next_u6428_$u7b$$u7b$closure$u7d$$u7d$17h5a008872eccd02ceE.exit.i.i.i.i.i": ; preds = %bb7.i.i.i.i
  %94 = add nuw nsw i64 %index.i.i.i.i.i, 2
  store i64 %94, ptr %81, align 16, !alias.scope !187, !noalias !190
  %ptr.i.i.i.i.i.i.i.i = getelementptr inbounds i32, ptr %_5.i.i.i.i.i, i64 %index.i.i.i.i.i
  %_13.i.i.i.i.i.i = load i64, ptr %ptr.i.i.i.i.i.i.i.i, align 4, !alias.scope !193, !noalias !190
  br label %_ZN4rand3rng3Rng3gen17hc3cb4e92c2639662E.exit.i.i

bb10.i.i.i.i.i:                                   ; preds = %bb5.i.i.i.i.i
  %_20.i.i.i.i.i = load i32, ptr %84, align 4, !alias.scope !187, !noalias !190, !noundef !4
; invoke rand::rngs::adapter::reseeding::fork::get_fork_counter
  %global_fork_counter.i.i.i.i.i.i.i32 = invoke noundef i64 @_ZN4rand4rngs7adapter9reseeding4fork16get_fork_counter17h8844478595db5affE()
          to label %global_fork_counter.i.i.i.i.i.i.i.noexc unwind label %cleanup3.loopexit

global_fork_counter.i.i.i.i.i.i.i.noexc:          ; preds = %bb10.i.i.i.i.i
  %_5.i.i.i.i.i.i.i = load i64, ptr %82, align 8, !alias.scope !196, !noalias !201, !noundef !4
  %_4.i.i.i.i.i.i.i = icmp slt i64 %_5.i.i.i.i.i.i.i, 1
  br i1 %_4.i.i.i.i.i.i.i, label %bb4.i.i.i.i.i.i.i, label %bb3.i.i.i.i.i.i.i31

bb3.i.i.i.i.i.i.i31:                              ; preds = %global_fork_counter.i.i.i.i.i.i.i.noexc
  %_16.i.i.i.i.i.i.i = load i64, ptr %83, align 16, !alias.scope !196, !noalias !201, !noundef !4
  %_15.i.i.i.i.i.i.i = sub i64 %_16.i.i.i.i.i.i.i, %global_fork_counter.i.i.i.i.i.i.i32
  %_6.i.i.i.i.i.i.i = icmp slt i64 %_15.i.i.i.i.i.i.i, 0
  br i1 %_6.i.i.i.i.i.i.i, label %bb4.i.i.i.i.i.i.i, label %bb6.i.i.i.i.i.i.i

bb6.i.i.i.i.i.i.i:                                ; preds = %bb3.i.i.i.i.i.i.i31
  %95 = add nsw i64 %_5.i.i.i.i.i.i.i, -256
  store i64 %95, ptr %82, align 8, !alias.scope !196, !noalias !201
; invoke rand_chacha::guts::refill_wide
  invoke void @_ZN11rand_chacha4guts11refill_wide17h493d2c55ea6d2504E(ptr noalias noundef nonnull align 16 dereferenceable(48) %_9.i2.i.i.i.i.i, i32 noundef 6, ptr noalias noundef nonnull align 1 dereferenceable(256) %_5.i.i.i.i.i)
          to label %"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E.exit.i.i.i.i.i" unwind label %cleanup3.loopexit

bb4.i.i.i.i.i.i.i:                                ; preds = %bb3.i.i.i.i.i.i.i31, %global_fork_counter.i.i.i.i.i.i.i.noexc
; invoke rand::rngs::adapter::reseeding::ReseedingCore<R,Rsdr>::reseed_and_generate
  invoke fastcc void @"_ZN4rand4rngs7adapter9reseeding29ReseedingCore$LT$R$C$Rsdr$GT$19reseed_and_generate17h3ca4ed8645b1d752E"(ptr noalias noundef nonnull align 16 dereferenceable(80) %_9.i2.i.i.i.i.i, ptr noalias noundef nonnull align 4 dereferenceable(256) %_5.i.i.i.i.i, i64 noundef %global_fork_counter.i.i.i.i.i.i.i32)
          to label %"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E.exit.i.i.i.i.i" unwind label %cleanup3.loopexit

"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E.exit.i.i.i.i.i": ; preds = %bb4.i.i.i.i.i.i.i, %bb6.i.i.i.i.i.i.i
  store i64 1, ptr %81, align 16, !alias.scope !203, !noalias !190
  %x.i.i.i.i.i = zext i32 %_20.i.i.i.i.i to i64
  %_27.i.i.i.i.i = load i32, ptr %_5.i.i.i.i.i, align 4, !alias.scope !187, !noalias !190, !noundef !4
  %y.i.i.i.i.i = zext i32 %_27.i.i.i.i.i to i64
  %_32.i.i.i.i.i = shl nuw i64 %y.i.i.i.i.i, 32
  %96 = or disjoint i64 %_32.i.i.i.i.i, %x.i.i.i.i.i
  br label %_ZN4rand3rng3Rng3gen17hc3cb4e92c2639662E.exit.i.i

bb6.i.i.i.i.i:                                    ; preds = %bb5.i.i.i.i.i
; invoke rand::rngs::adapter::reseeding::fork::get_fork_counter
  %global_fork_counter.i.i3.i.i.i.i.i35 = invoke noundef i64 @_ZN4rand4rngs7adapter9reseeding4fork16get_fork_counter17h8844478595db5affE()
          to label %global_fork_counter.i.i3.i.i.i.i.i.noexc unwind label %cleanup3.loopexit

global_fork_counter.i.i3.i.i.i.i.i.noexc:         ; preds = %bb6.i.i.i.i.i
  %_5.i.i4.i.i.i.i.i = load i64, ptr %82, align 8, !alias.scope !204, !noalias !209, !noundef !4
  %_4.i.i5.i.i.i.i.i = icmp slt i64 %_5.i.i4.i.i.i.i.i, 1
  br i1 %_4.i.i5.i.i.i.i.i, label %bb4.i.i11.i.i.i.i.i, label %bb3.i.i6.i.i.i.i.i

bb3.i.i6.i.i.i.i.i:                               ; preds = %global_fork_counter.i.i3.i.i.i.i.i.noexc
  %_16.i.i7.i.i.i.i.i = load i64, ptr %83, align 16, !alias.scope !204, !noalias !209, !noundef !4
  %_15.i.i8.i.i.i.i.i = sub i64 %_16.i.i7.i.i.i.i.i, %global_fork_counter.i.i3.i.i.i.i.i35
  %_6.i.i9.i.i.i.i.i = icmp slt i64 %_15.i.i8.i.i.i.i.i, 0
  br i1 %_6.i.i9.i.i.i.i.i, label %bb4.i.i11.i.i.i.i.i, label %bb6.i.i10.i.i.i.i.i

bb6.i.i10.i.i.i.i.i:                              ; preds = %bb3.i.i6.i.i.i.i.i
  %97 = add nsw i64 %_5.i.i4.i.i.i.i.i, -256
  store i64 %97, ptr %82, align 8, !alias.scope !204, !noalias !209
; invoke rand_chacha::guts::refill_wide
  invoke void @_ZN11rand_chacha4guts11refill_wide17h493d2c55ea6d2504E(ptr noalias noundef nonnull align 16 dereferenceable(48) %_9.i2.i.i.i.i.i, i32 noundef 6, ptr noalias noundef nonnull align 1 dereferenceable(256) %_5.i.i.i.i.i)
          to label %"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E.exit12.i.i.i.i.i" unwind label %cleanup3.loopexit

bb4.i.i11.i.i.i.i.i:                              ; preds = %bb3.i.i6.i.i.i.i.i, %global_fork_counter.i.i3.i.i.i.i.i.noexc
; invoke rand::rngs::adapter::reseeding::ReseedingCore<R,Rsdr>::reseed_and_generate
  invoke fastcc void @"_ZN4rand4rngs7adapter9reseeding29ReseedingCore$LT$R$C$Rsdr$GT$19reseed_and_generate17h3ca4ed8645b1d752E"(ptr noalias noundef nonnull align 16 dereferenceable(80) %_9.i2.i.i.i.i.i, ptr noalias noundef nonnull align 4 dereferenceable(256) %_5.i.i.i.i.i, i64 noundef %global_fork_counter.i.i3.i.i.i.i.i35)
          to label %"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E.exit12.i.i.i.i.i" unwind label %cleanup3.loopexit

"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E.exit12.i.i.i.i.i": ; preds = %bb4.i.i11.i.i.i.i.i, %bb6.i.i10.i.i.i.i.i
  store i64 2, ptr %81, align 16, !alias.scope !211, !noalias !190
  %_13.i15.i.i.i.i.i = load i64, ptr %_5.i.i.i.i.i, align 4, !alias.scope !212, !noalias !190
  br label %_ZN4rand3rng3Rng3gen17hc3cb4e92c2639662E.exit.i.i

_ZN4rand3rng3Rng3gen17hc3cb4e92c2639662E.exit.i.i: ; preds = %"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E.exit12.i.i.i.i.i", %"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E.exit.i.i.i.i.i", %"_ZN74_$LT$rand_core..block..BlockRng$LT$R$GT$$u20$as$u20$rand_core..RngCore$GT$8next_u6428_$u7b$$u7b$closure$u7d$$u7d$17h5a008872eccd02ceE.exit.i.i.i.i.i"
  %index.i.i.i2.i.i = phi i64 [ %94, %"_ZN74_$LT$rand_core..block..BlockRng$LT$R$GT$$u20$as$u20$rand_core..RngCore$GT$8next_u6428_$u7b$$u7b$closure$u7d$$u7d$17h5a008872eccd02ceE.exit.i.i.i.i.i" ], [ 2, %"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E.exit12.i.i.i.i.i" ], [ 1, %"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E.exit.i.i.i.i.i" ]
  %_0.sroa.0.0.i.i.i.i.i = phi i64 [ %_13.i.i.i.i.i.i, %"_ZN74_$LT$rand_core..block..BlockRng$LT$R$GT$$u20$as$u20$rand_core..RngCore$GT$8next_u6428_$u7b$$u7b$closure$u7d$$u7d$17h5a008872eccd02ceE.exit.i.i.i.i.i" ], [ %_13.i15.i.i.i.i.i, %"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E.exit12.i.i.i.i.i" ], [ %96, %"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E.exit.i.i.i.i.i" ]
  %_26.i.i.i.i = zext i64 %_0.sroa.0.0.i.i.i.i.i to i128
  %_25.i.i.i.i = mul nuw i128 %_26.i.i.i.i, %_27.i.i.i.i
  %_30.i.i.i.i = trunc i128 %_25.i.i.i.i to i64
  %_19.not.i.i.i.i = icmp ult i64 %zone.i.i.i.i, %_30.i.i.i.i
  br i1 %_19.not.i.i.i.i, label %bb7.i.i.i.i, label %bb9

bb12:                                             ; preds = %bb8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_44)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_46)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_49)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_51)
  store ptr %size, ptr %_51, align 8
  %_52.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %_51, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h40a1c13cca26d73aE", ptr %_52.sroa.4.0..sroa_idx, align 8
  %98 = getelementptr inbounds i8, ptr %_51, i64 16
  store ptr %time_elapsed, ptr %98, align 8
  %_53.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %_51, i64 24
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17h7262d1994dc3910bE", ptr %_53.sroa.4.0..sroa_idx, align 8
  store ptr @alloc_e9733d77bbfc181bdc07f6a581d03ae5, ptr %_49, align 8
  %99 = getelementptr inbounds i8, ptr %_49, i64 8
  store i64 3, ptr %99, align 8
  %100 = getelementptr inbounds i8, ptr %_49, i64 32
  store ptr null, ptr %100, align 8
  %101 = getelementptr inbounds i8, ptr %_49, i64 16
  store ptr %_51, ptr %101, align 8
  %102 = getelementptr inbounds i8, ptr %_49, i64 24
  store i64 2, ptr %102, align 8
; invoke std::io::stdio::_print
  invoke void @_ZN3std2io5stdio6_print17he9dfbe767523a89eE(ptr noalias nocapture noundef nonnull align 8 dereferenceable(48) %_49)
          to label %bb13 unwind label %cleanup3.loopexit.split-lp

bb13:                                             ; preds = %bb12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_49)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_51)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sum)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %time_elapsed)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end_time)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %start_time)
  %103 = icmp eq i64 %_4.sroa.4.0.ph.i.i.i25, 0
  br i1 %103, label %bb14, label %bb2.i.i.i4.i40

bb2.i.i.i4.i40:                                   ; preds = %bb13
  %104 = shl nuw i64 %_4.sroa.4.0.ph.i.i.i25, 2
  call void @__rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.ph.i.i.i26, i64 noundef %104, i64 noundef 4) #20
  br label %bb14

bb14:                                             ; preds = %bb2.i.i.i4.i40, %bb13
  %self1.val.i.i.i43 = load i64, ptr %59, align 8, !noalias !215, !noundef !4
  %val.i.i.i44 = add i64 %self1.val.i.i.i43, -1
  store i64 %val.i.i.i44, ptr %59, align 8, !noalias !215
  %105 = icmp eq i64 %val.i.i.i44, 0
  br i1 %105, label %bb1.i.i.i45, label %bb15

bb1.i.i.i45:                                      ; preds = %bb14
; call alloc::rc::Rc<T,A>::drop_slow
  call fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1e7129d4bbbb8ba8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %rng)
  br label %bb15

bb15:                                             ; preds = %bb1.i.i.i45, %bb14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rng)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %_1.val1.i = load i64, ptr %46, align 8, !alias.scope !222, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %_710.i.i.i = icmp eq i64 %_1.val1.i, 0
  br i1 %_710.i.i.i, label %bb4.i47, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb15, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he8101475e78ad32cE.exit.i.i.i"
  %_3.sroa.0.011.i.i.i = phi i64 [ %106, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he8101475e78ad32cE.exit.i.i.i" ], [ 0, %bb15 ]
  %_6.i.i.i = getelementptr inbounds [0 x %"alloc::string::String"], ptr %_70, i64 0, i64 %_3.sroa.0.011.i.i.i
  %106 = add nuw i64 %_3.sroa.0.011.i.i.i, 1
  %_6.val.i.i.i = load i64, ptr %_6.i.i.i, align 8, !alias.scope !225, !noalias !222
  %107 = icmp eq i64 %_6.val.i.i.i, 0
  br i1 %107, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he8101475e78ad32cE.exit.i.i.i", label %bb2.i.i.i4.i.i.i.i.i

bb2.i.i.i4.i.i.i.i.i:                             ; preds = %bb5.i.i.i
  %108 = getelementptr i8, ptr %_6.i.i.i, i64 8
  %_6.val7.i.i.i = load ptr, ptr %108, align 8, !alias.scope !225, !noalias !222, !nonnull !4, !noundef !4
  call void @__rust_dealloc(ptr noundef nonnull %_6.val7.i.i.i, i64 noundef %_6.val.i.i.i, i64 noundef 1) #20, !noalias !228
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he8101475e78ad32cE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he8101475e78ad32cE.exit.i.i.i": ; preds = %bb2.i.i.i4.i.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %106, %_1.val1.i
  br i1 %_7.i.i.i, label %bb4.i47, label %bb5.i.i.i

bb4.i47:                                          ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he8101475e78ad32cE.exit.i.i.i", %bb15
  %_1.val4.i = load i64, ptr %args, align 8, !alias.scope !222
  %109 = icmp eq i64 %_1.val4.i, 0
  br i1 %109, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hf2582b2c8b5658a9E.exit", label %bb2.i.i.i6.i

bb2.i.i.i6.i:                                     ; preds = %bb4.i47
  %110 = mul nuw i64 %_1.val4.i, 24
  call void @__rust_dealloc(ptr noundef nonnull %_70, i64 noundef %110, i64 noundef 8) #20, !noalias !222
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hf2582b2c8b5658a9E.exit"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hf2582b2c8b5658a9E.exit": ; preds = %bb4.i47, %bb2.i.i.i6.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args)
  ret void

bb9:                                              ; preds = %_ZN4rand3rng3Rng3gen17hc3cb4e92c2639662E.exit.i.i
  %_29.i.i.i.i = lshr i128 %_25.i.i.i.i, 64
  %_28.i.i.i.i = trunc nuw i128 %_29.i.i.i.i to i64
  %_106 = icmp ugt i64 %_19, %_28.i.i.i.i
  br i1 %_106, label %bb37, label %panic4.invoke

bb37:                                             ; preds = %bb9
  %_36 = call noundef i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %start_time) #20
  %exitcond.not = icmp eq i64 %iter.sroa.0.070, %_19
  br i1 %exitcond.not, label %panic4.invoke, label %bb38

panic4.invoke:                                    ; preds = %bb37, %bb9
  %111 = phi i64 [ %_28.i.i.i.i, %bb9 ], [ %_19, %bb37 ]
  %112 = phi ptr [ @alloc_aad2517fd4101d459009dc52af803952, %bb9 ], [ @alloc_2bd6595a69db0f93055ce8f32cf39e17, %bb37 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17he297efe09ec2f0b2E(i64 noundef %111, i64 noundef %_19, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %112) #21
          to label %panic4.cont unwind label %cleanup3.loopexit.split-lp

panic4.cont:                                      ; preds = %panic4.invoke
  unreachable

bb38:                                             ; preds = %bb37
  %_39 = getelementptr inbounds [0 x i32], ptr %_4.sroa.10.0.ph.i.i.i26, i64 0, i64 %iter.sroa.0.070
  %_38 = load i32, ptr %_39, align 4, !noundef !4
  %113 = add i32 %93, %_38
  store i32 %113, ptr %sum, align 4
  %_40 = call noundef i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %end_time) #20
  %_115 = load i64, ptr %end_time, align 8, !noundef !4
  %_116 = load i64, ptr %start_time, align 8, !noundef !4
  %_114 = sub i64 %_115, %_116
  %_113 = sitofp i64 %_114 to double
  %_120 = load i64, ptr %80, align 8, !noundef !4
  %_121 = load i64, ptr %79, align 8, !noundef !4
  %_119 = sub i64 %_120, %_121
  %_118 = sitofp i64 %_119 to double
  %_117 = fdiv double %_118, 1.000000e+09
  %_42 = fadd double %_117, %_113
  %114 = fadd double %92, %_42
  store double %114, ptr %time_elapsed, align 8
  %exitcond83.not = icmp eq i64 %_0.i, %_35
  br i1 %exitcond83.not, label %bb8, label %bb6.i.i.i.i

bb31:                                             ; preds = %bb29
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_87)
  br label %bb2.invoke

bb23:                                             ; preds = %bb1
  %115 = getelementptr inbounds i8, ptr %args, i64 8
  %_56 = load ptr, ptr %115, align 8, !nonnull !4, !noundef !4
  store ptr %_56, ptr %_7, align 8
  %_8.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %_7, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17he0b73bb99c26871aE", ptr %_8.sroa.4.0..sroa_idx, align 8
  store ptr @alloc_f5141501c590cf3a1a1c86d0852343ad, ptr %_5, align 8
  %116 = getelementptr inbounds i8, ptr %_5, i64 8
  store i64 2, ptr %116, align 8
  %117 = getelementptr inbounds i8, ptr %_5, i64 32
  store ptr null, ptr %117, align 8
  %118 = getelementptr inbounds i8, ptr %_5, i64 16
  store ptr %_7, ptr %118, align 8
  %119 = getelementptr inbounds i8, ptr %_5, i64 24
  store i64 1, ptr %119, align 8
; invoke std::io::stdio::_eprint
  invoke void @_ZN3std2io5stdio7_eprint17h5946fd4f5341b8d3E(ptr noalias nocapture noundef nonnull align 8 dereferenceable(48) %_5)
          to label %bb2 unwind label %cleanup

panic6:                                           ; preds = %bb1.thread, %bb1
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17he297efe09ec2f0b2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_05caefeccd73f12fad9eef8a0339362a) #21
          to label %unreachable unwind label %cleanup

bb2:                                              ; preds = %bb23
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7)
  br label %bb2.invoke

bb2.invoke:                                       ; preds = %bb31, %bb2
; invoke std::process::exit
  invoke void @_ZN3std7process4exit17h8e2a2cffe2701df2E(i32 noundef 1) #21
          to label %bb2.cont unwind label %cleanup

bb2.cont:                                         ; preds = %bb2.invoke
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef range(i32 1, 17), i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; <std::env::Args as core::iter::traits::iterator::Iterator>::next
; Function Attrs: nonlazybind uwtable
declare void @"_ZN73_$LT$std..env..Args$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb97f91f018a1a8bfE"(ptr dead_on_unwind noalias nocapture noundef writable sret([24 x i8]) align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; <std::env::Args as core::iter::traits::iterator::Iterator>::size_hint
; Function Attrs: nonlazybind uwtable
declare void @"_ZN73_$LT$std..env..Args$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h238855071e9006b0E"(ptr dead_on_unwind noalias nocapture noundef writable sret([24 x i8]) align 8 dereferenceable(24), ptr noalias noundef readonly align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #7

; rand::rngs::adapter::reseeding::fork::get_fork_counter
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4rand4rngs7adapter9reseeding4fork16get_fork_counter17h8844478595db5affE() unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN3std2rt19lang_start_internal17h78dd36c15a6b42b8E(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h40a1c13cca26d73aE"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; <rand_core::os::OsRng as rand_core::RngCore>::try_fill_bytes
; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @"_ZN59_$LT$rand_core..os..OsRng$u20$as$u20$rand_core..RngCore$GT$14try_fill_bytes17hb85bb1f52fadcb67E"(ptr noalias noundef nonnull align 1, ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @__rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @__rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #11

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h440b0d663dfeaaa6E(i64 noundef range(i64 0, -9223372036854775807), i64, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #12

; <str as core::fmt::Display>::fmt
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h22409d91b7412b76E"(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17he297efe09ec2f0b2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #13

; rand_chacha::guts::init_chacha
; Function Attrs: nonlazybind uwtable
declare void @_ZN11rand_chacha4guts11init_chacha17h7d486d0c2c248776E(ptr dead_on_unwind noalias nocapture noundef writable sret([48 x i8]) align 16 dereferenceable(48), ptr noalias noundef readonly align 1 dereferenceable(32), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; rand_chacha::guts::refill_wide
; Function Attrs: nonlazybind uwtable
declare void @_ZN11rand_chacha4guts11refill_wide17h493d2c55ea6d2504E(ptr noalias noundef align 16 dereferenceable(48), i32 noundef, ptr noalias noundef align 1 dereferenceable(256)) unnamed_addr #0

; std::env::args
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3env4args17hf4a046e0c9f8be25E(ptr dead_on_unwind noalias nocapture noundef writable sret([32 x i8]) align 8 dereferenceable(32)) unnamed_addr #0

; rand::rngs::thread::thread_rng
; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_ZN4rand4rngs6thread10thread_rng17h2221524bd2af39a8E() unnamed_addr #0

; core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h91a5fd3fa6d58062E"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; std::io::stdio::_print
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17he9dfbe767523a89eE(ptr noalias nocapture noundef align 8 dereferenceable(48)) unnamed_addr #0

; core::fmt::float::<impl core::fmt::Display for f64>::fmt
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17h7262d1994dc3910bE"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @clock_gettime(i32 noundef, ptr noundef) unnamed_addr #3

; std::io::stdio::_eprint
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio7_eprint17h5946fd4f5341b8d3E(ptr noalias nocapture noundef align 8 dereferenceable(48)) unnamed_addr #0

; std::process::exit
; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN3std7process4exit17h8e2a2cffe2701df2E(i32 noundef) unnamed_addr #14

; Function Attrs: nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #15 {
top:
  %_8.i = alloca [8 x i8], align 8
  %2 = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_8.i)
  store ptr @_ZN9array_sum4main17hce50e5e6a7caecb0E, ptr %_8.i, align 8
; call std::rt::lang_start_internal
  %3 = call noundef i64 @_ZN3std2rt19lang_start_internal17h78dd36c15a6b42b8E(ptr noundef nonnull align 1 %_8.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(48) @vtable.0, i64 noundef %2, ptr noundef %1, i8 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_8.i)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.84.0 (9fc6b4312 2025-01-07)"}
!4 = !{}
!5 = !{i32 4672416}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hcbfb7e6155bda534E: %_1"}
!8 = distinct !{!8, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hcbfb7e6155bda534E"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17hb74646f698f207c5E: %_1"}
!11 = distinct !{!11, !"_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17hb74646f698f207c5E"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN4core3ptr52drop_in_place$LT$std..sys..pal..unix..args..Args$GT$17h629558cc04d039d9E: %_1"}
!14 = distinct !{!14, !"_ZN4core3ptr52drop_in_place$LT$std..sys..pal..unix..args..Args$GT$17h629558cc04d039d9E"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h44ca41729461a73cE: %_1"}
!17 = distinct !{!17, !"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h44ca41729461a73cE"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc3cb7605268d2854E: %self"}
!20 = distinct !{!20, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc3cb7605268d2854E"}
!21 = !{!19, !16, !13, !10}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hd86e4960095927fdE: %_1.0"}
!24 = distinct !{!24, !"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hd86e4960095927fdE"}
!25 = !{!23, !19, !16, !13, !10}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h0a9f137ca3b801f4E: %_1.0"}
!28 = distinct !{!28, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h0a9f137ca3b801f4E"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN4rand4rngs7adapter9reseeding29ReseedingCore$LT$R$C$Rsdr$GT$6reseed17h45e0e937f83f4bc3E: argument 0"}
!31 = distinct !{!31, !"_ZN4rand4rngs7adapter9reseeding29ReseedingCore$LT$R$C$Rsdr$GT$6reseed17h45e0e937f83f4bc3E"}
!32 = !{!33, !35, !30}
!33 = distinct !{!33, !34, !"_ZN9rand_core11SeedableRng8from_rng17haf6342f6bd21750fE: %_0"}
!34 = distinct !{!34, !"_ZN9rand_core11SeedableRng8from_rng17haf6342f6bd21750fE"}
!35 = distinct !{!35, !34, !"_ZN9rand_core11SeedableRng8from_rng17haf6342f6bd21750fE: argument 1"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN4core5array76_$LT$impl$u20$core..default..Default$u20$for$u20$$u5b$T$u3b$$u20$32$u5d$$GT$7default17he0c187215ad23188E: %_0"}
!38 = distinct !{!38, !"_ZN4core5array76_$LT$impl$u20$core..default..Default$u20$for$u20$$u5b$T$u3b$$u20$32$u5d$$GT$7default17he0c187215ad23188E"}
!39 = !{!40, !33}
!40 = distinct !{!40, !41, !"_ZN52_$LT$$RF$mut$u20$R$u20$as$u20$rand_core..RngCore$GT$14try_fill_bytes17h70c2238de9b87528E: %self"}
!41 = distinct !{!41, !"_ZN52_$LT$$RF$mut$u20$R$u20$as$u20$rand_core..RngCore$GT$14try_fill_bytes17h70c2238de9b87528E"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN4rand4rngs7adapter9reseeding29ReseedingCore$LT$R$C$Rsdr$GT$6reseed28_$u7b$$u7b$closure$u7d$$u7d$17h95e3d0749577b175E: %result"}
!44 = distinct !{!44, !"_ZN4rand4rngs7adapter9reseeding29ReseedingCore$LT$R$C$Rsdr$GT$6reseed28_$u7b$$u7b$closure$u7d$$u7d$17h95e3d0749577b175E"}
!45 = !{i64 0, i64 -9223372036854775808}
!46 = !{i64 1, i64 0}
!47 = !{i64 0, i64 -9223372036854775807}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17h6c2cc2b0af6c8c4bE: %self"}
!50 = distinct !{!50, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17h6c2cc2b0af6c8c4bE"}
!51 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8d4a34e63a9d7fadE: %_0"}
!54 = distinct !{!54, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8d4a34e63a9d7fadE"}
!55 = !{i64 0, i64 2}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h57badd872aff48f4E: %_0"}
!58 = distinct !{!58, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h57badd872aff48f4E"}
!59 = !{!60}
!60 = distinct !{!60, !58, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h57badd872aff48f4E: %iterator"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h426e245002d3d8edE: %_0"}
!63 = distinct !{!63, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h426e245002d3d8edE"}
!64 = !{!65}
!65 = distinct !{!65, !63, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h426e245002d3d8edE: %iterator"}
!66 = !{!62, !65, !57, !60}
!67 = !{!62, !57}
!68 = !{!65, !60}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hbd2058f8880fb0a9E: %_1"}
!71 = distinct !{!71, !"_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hbd2058f8880fb0a9E"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17hb74646f698f207c5E: %_1"}
!74 = distinct !{!74, !"_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17hb74646f698f207c5E"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN4core3ptr52drop_in_place$LT$std..sys..pal..unix..args..Args$GT$17h629558cc04d039d9E: %_1"}
!77 = distinct !{!77, !"_ZN4core3ptr52drop_in_place$LT$std..sys..pal..unix..args..Args$GT$17h629558cc04d039d9E"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h44ca41729461a73cE: %_1"}
!80 = distinct !{!80, !"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h44ca41729461a73cE"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc3cb7605268d2854E: %self"}
!83 = distinct !{!83, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc3cb7605268d2854E"}
!84 = !{!82, !79, !76, !73, !70, !65, !60}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hd86e4960095927fdE: %_1.0"}
!87 = distinct !{!87, !"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hd86e4960095927fdE"}
!88 = !{!82, !79, !76, !73, !70, !62, !57}
!89 = !{!86, !82, !79, !76, !73, !70, !62, !57}
!90 = !{!91, !62, !65, !57, !60}
!91 = distinct !{!91, !92, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h3da910e6f3324796E: %_0"}
!92 = distinct !{!92, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h3da910e6f3324796E"}
!93 = !{!91, !62, !57}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h5dfc06720b5847e8E: %self"}
!96 = distinct !{!96, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h5dfc06720b5847e8E"}
!97 = !{!98}
!98 = distinct !{!98, !96, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h5dfc06720b5847e8E: %iter"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h62ccc38d211b401dE: %self"}
!101 = distinct !{!101, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h62ccc38d211b401dE"}
!102 = !{!103}
!103 = distinct !{!103, !101, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h62ccc38d211b401dE: %iterator"}
!104 = !{!100, !103, !95, !98, !62, !65, !57, !60}
!105 = !{!100, !95, !62, !57}
!106 = !{!100, !95}
!107 = !{!103, !98, !62, !65, !57, !60}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hbd2058f8880fb0a9E: %_1"}
!110 = distinct !{!110, !"_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hbd2058f8880fb0a9E"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17hb74646f698f207c5E: %_1"}
!113 = distinct !{!113, !"_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17hb74646f698f207c5E"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN4core3ptr52drop_in_place$LT$std..sys..pal..unix..args..Args$GT$17h629558cc04d039d9E: %_1"}
!116 = distinct !{!116, !"_ZN4core3ptr52drop_in_place$LT$std..sys..pal..unix..args..Args$GT$17h629558cc04d039d9E"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h44ca41729461a73cE: %_1"}
!119 = distinct !{!119, !"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h44ca41729461a73cE"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc3cb7605268d2854E: %self"}
!122 = distinct !{!122, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc3cb7605268d2854E"}
!123 = !{!121, !118, !115, !112, !109, !103, !98}
!124 = !{!100, !95, !62, !65, !57, !60}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hd86e4960095927fdE: %_1.0"}
!127 = distinct !{!127, !"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hd86e4960095927fdE"}
!128 = !{!121, !118, !115, !112, !109, !100, !95, !62, !57}
!129 = !{!126, !121, !118, !115, !112, !109, !100, !95, !62, !57}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN4core3num21_$LT$impl$u20$u64$GT$14from_str_radix17h76698497126106beE: %src.0"}
!132 = distinct !{!132, !"_ZN4core3num21_$LT$impl$u20$u64$GT$14from_str_radix17h76698497126106beE"}
!133 = !{!134}
!134 = distinct !{!134, !132, !"_ZN4core3num21_$LT$impl$u20$u64$GT$14from_str_radix17h76698497126106beE: %_0"}
!135 = !{!136, !138, !140, !141, !143}
!136 = distinct !{!136, !137, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h3da910e6f3324796E: %_0"}
!137 = distinct !{!137, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h3da910e6f3324796E"}
!138 = distinct !{!138, !139, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h9177f52b9300099cE: %_0"}
!139 = distinct !{!139, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h9177f52b9300099cE"}
!140 = distinct !{!140, !139, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h9177f52b9300099cE: %iterator"}
!141 = distinct !{!141, !142, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17haa2795aee96794c1E: %_0"}
!142 = distinct !{!142, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17haa2795aee96794c1E"}
!143 = distinct !{!143, !142, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17haa2795aee96794c1E: %iterator"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN74_$LT$rand_core..block..BlockRng$LT$R$GT$$u20$as$u20$rand_core..RngCore$GT$8next_u3217h7777f4cf39a7f392E: %self"}
!146 = distinct !{!146, !"_ZN74_$LT$rand_core..block..BlockRng$LT$R$GT$$u20$as$u20$rand_core..RngCore$GT$8next_u3217h7777f4cf39a7f392E"}
!147 = !{!148, !150, !152, !154, !156, !157, !159, !160, !162, !163, !165, !138, !140, !141, !143}
!148 = distinct !{!148, !149, !"_ZN68_$LT$rand..rngs..thread..ThreadRng$u20$as$u20$rand_core..RngCore$GT$8next_u3217hf3f8bc4843e00d5eE: %self"}
!149 = distinct !{!149, !"_ZN68_$LT$rand..rngs..thread..ThreadRng$u20$as$u20$rand_core..RngCore$GT$8next_u3217hf3f8bc4843e00d5eE"}
!150 = distinct !{!150, !151, !"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7b9d05c3006805a3E: %_1"}
!151 = distinct !{!151, !"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7b9d05c3006805a3E"}
!152 = distinct !{!152, !153, !"_ZN4core4iter6traits8iterator8Iterator4fold17he4c4772ae17838b8E: %f"}
!153 = distinct !{!153, !"_ZN4core4iter6traits8iterator8Iterator4fold17he4c4772ae17838b8E"}
!154 = distinct !{!154, !155, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc9d30c158d0a8246E: %self"}
!155 = distinct !{!155, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc9d30c158d0a8246E"}
!156 = distinct !{!156, !155, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc9d30c158d0a8246E: %g"}
!157 = distinct !{!157, !158, !"_ZN4core4iter6traits8iterator8Iterator8for_each17hc3abb5ad0280d7efE: %self"}
!158 = distinct !{!158, !"_ZN4core4iter6traits8iterator8Iterator8for_each17hc3abb5ad0280d7efE"}
!159 = distinct !{!159, !158, !"_ZN4core4iter6traits8iterator8Iterator8for_each17hc3abb5ad0280d7efE: %f"}
!160 = distinct !{!160, !161, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hafe3a12bd2d04c93E: %self"}
!161 = distinct !{!161, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hafe3a12bd2d04c93E"}
!162 = distinct !{!162, !161, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hafe3a12bd2d04c93E: %iterator"}
!163 = distinct !{!163, !164, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h8b613a62fc2a015cE: %self"}
!164 = distinct !{!164, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h8b613a62fc2a015cE"}
!165 = distinct !{!165, !164, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h8b613a62fc2a015cE: %iterator"}
!166 = !{!152, !154, !156, !157, !159, !160, !162, !163, !165, !138, !140, !141, !143}
!167 = !{!168, !170, !145}
!168 = distinct !{!168, !169, !"_ZN112_$LT$rand..rngs..adapter..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17h2a6eaa42d17fac40E: %self"}
!169 = distinct !{!169, !"_ZN112_$LT$rand..rngs..adapter..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17h2a6eaa42d17fac40E"}
!170 = distinct !{!170, !171, !"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E: %self"}
!171 = distinct !{!171, !"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E"}
!172 = !{!173, !148, !150, !152, !154, !156, !157, !159, !160, !162, !163, !165, !138, !140, !141, !143}
!173 = distinct !{!173, !169, !"_ZN112_$LT$rand..rngs..adapter..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17h2a6eaa42d17fac40E: %results"}
!174 = !{!175, !177, !150, !152, !154, !156, !157, !159, !160, !162, !163, !165, !138, !140, !141, !143}
!175 = distinct !{!175, !176, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted28_$u7b$$u7b$closure$u7d$$u7d$17haecc0c313234f276E: %_1"}
!176 = distinct !{!176, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted28_$u7b$$u7b$closure$u7d$$u7d$17haecc0c313234f276E"}
!177 = distinct !{!177, !178, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hcda176cdbabfeb54E: %_1"}
!178 = distinct !{!178, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hcda176cdbabfeb54E"}
!179 = !{!138, !140, !141, !143}
!180 = !{!181, !183, !185}
!181 = distinct !{!181, !182, !"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1954002c48964bb4E: %self"}
!182 = distinct !{!182, !"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1954002c48964bb4E"}
!183 = distinct !{!183, !184, !"_ZN4core3ptr180drop_in_place$LT$alloc..rc..Rc$LT$core..cell..UnsafeCell$LT$rand..rngs..adapter..reseeding..ReseedingRng$LT$rand_chacha..chacha..ChaCha12Core$C$rand_core..os..OsRng$GT$$GT$$GT$$GT$17h3c9d40cbfe693f6bE: %_1"}
!184 = distinct !{!184, !"_ZN4core3ptr180drop_in_place$LT$alloc..rc..Rc$LT$core..cell..UnsafeCell$LT$rand..rngs..adapter..reseeding..ReseedingRng$LT$rand_chacha..chacha..ChaCha12Core$C$rand_core..os..OsRng$GT$$GT$$GT$$GT$17h3c9d40cbfe693f6bE"}
!185 = distinct !{!185, !186, !"_ZN4core3ptr50drop_in_place$LT$rand..rngs..thread..ThreadRng$GT$17hc2e4f9b0c25363beE: %_1"}
!186 = distinct !{!186, !"_ZN4core3ptr50drop_in_place$LT$rand..rngs..thread..ThreadRng$GT$17hc2e4f9b0c25363beE"}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZN74_$LT$rand_core..block..BlockRng$LT$R$GT$$u20$as$u20$rand_core..RngCore$GT$8next_u6417hf7e08382f9eead05E: %self"}
!189 = distinct !{!189, !"_ZN74_$LT$rand_core..block..BlockRng$LT$R$GT$$u20$as$u20$rand_core..RngCore$GT$8next_u6417hf7e08382f9eead05E"}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZN68_$LT$rand..rngs..thread..ThreadRng$u20$as$u20$rand_core..RngCore$GT$8next_u6417ha3248156fc7a753dE: %self"}
!192 = distinct !{!192, !"_ZN68_$LT$rand..rngs..thread..ThreadRng$u20$as$u20$rand_core..RngCore$GT$8next_u6417ha3248156fc7a753dE"}
!193 = !{!194, !188}
!194 = distinct !{!194, !195, !"_ZN74_$LT$rand_core..block..BlockRng$LT$R$GT$$u20$as$u20$rand_core..RngCore$GT$8next_u6428_$u7b$$u7b$closure$u7d$$u7d$17h5a008872eccd02ceE: %results.0"}
!195 = distinct !{!195, !"_ZN74_$LT$rand_core..block..BlockRng$LT$R$GT$$u20$as$u20$rand_core..RngCore$GT$8next_u6428_$u7b$$u7b$closure$u7d$$u7d$17h5a008872eccd02ceE"}
!196 = !{!197, !199, !188}
!197 = distinct !{!197, !198, !"_ZN112_$LT$rand..rngs..adapter..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17h2a6eaa42d17fac40E: %self"}
!198 = distinct !{!198, !"_ZN112_$LT$rand..rngs..adapter..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17h2a6eaa42d17fac40E"}
!199 = distinct !{!199, !200, !"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E: %self"}
!200 = distinct !{!200, !"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E"}
!201 = !{!202, !191}
!202 = distinct !{!202, !198, !"_ZN112_$LT$rand..rngs..adapter..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17h2a6eaa42d17fac40E: %results"}
!203 = !{!199, !188}
!204 = !{!205, !207, !188}
!205 = distinct !{!205, !206, !"_ZN112_$LT$rand..rngs..adapter..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17h2a6eaa42d17fac40E: %self"}
!206 = distinct !{!206, !"_ZN112_$LT$rand..rngs..adapter..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17h2a6eaa42d17fac40E"}
!207 = distinct !{!207, !208, !"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E: %self"}
!208 = distinct !{!208, !"_ZN9rand_core5block17BlockRng$LT$R$GT$16generate_and_set17h920ca7b6a5864aa2E"}
!209 = !{!210, !191}
!210 = distinct !{!210, !206, !"_ZN112_$LT$rand..rngs..adapter..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17h2a6eaa42d17fac40E: %results"}
!211 = !{!207, !188}
!212 = !{!213, !188}
!213 = distinct !{!213, !214, !"_ZN74_$LT$rand_core..block..BlockRng$LT$R$GT$$u20$as$u20$rand_core..RngCore$GT$8next_u6428_$u7b$$u7b$closure$u7d$$u7d$17h5a008872eccd02ceE: %results.0"}
!214 = distinct !{!214, !"_ZN74_$LT$rand_core..block..BlockRng$LT$R$GT$$u20$as$u20$rand_core..RngCore$GT$8next_u6428_$u7b$$u7b$closure$u7d$$u7d$17h5a008872eccd02ceE"}
!215 = !{!216, !218, !220}
!216 = distinct !{!216, !217, !"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1954002c48964bb4E: %self"}
!217 = distinct !{!217, !"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1954002c48964bb4E"}
!218 = distinct !{!218, !219, !"_ZN4core3ptr180drop_in_place$LT$alloc..rc..Rc$LT$core..cell..UnsafeCell$LT$rand..rngs..adapter..reseeding..ReseedingRng$LT$rand_chacha..chacha..ChaCha12Core$C$rand_core..os..OsRng$GT$$GT$$GT$$GT$17h3c9d40cbfe693f6bE: %_1"}
!219 = distinct !{!219, !"_ZN4core3ptr180drop_in_place$LT$alloc..rc..Rc$LT$core..cell..UnsafeCell$LT$rand..rngs..adapter..reseeding..ReseedingRng$LT$rand_chacha..chacha..ChaCha12Core$C$rand_core..os..OsRng$GT$$GT$$GT$$GT$17h3c9d40cbfe693f6bE"}
!220 = distinct !{!220, !221, !"_ZN4core3ptr50drop_in_place$LT$rand..rngs..thread..ThreadRng$GT$17hc2e4f9b0c25363beE: %_1"}
!221 = distinct !{!221, !"_ZN4core3ptr50drop_in_place$LT$rand..rngs..thread..ThreadRng$GT$17hc2e4f9b0c25363beE"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hf2582b2c8b5658a9E: %_1"}
!224 = distinct !{!224, !"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hf2582b2c8b5658a9E"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h0a9f137ca3b801f4E: %_1.0"}
!227 = distinct !{!227, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h0a9f137ca3b801f4E"}
!228 = !{!226, !223}
