#include "matrix_multiply.h"

// The top-level function to synthesize
//
void matrix_multiply_top(const MATRIX_T A [A_ROWS][A_COLS],
                    const MATRIX_T B [B_ROWS][B_COLS],
                    MATRIX_T C[C_ROWS][C_COLS]){

  MATRIX_T a_i [A_ROWS][A_COLS];
  MATRIX_T b_i [B_ROWS][B_COLS];
  MATRIX_T c_i [C_ROWS][C_COLS];

  // Copy input data to local memory
  a_row_loop : for (int r=0;r<A_ROWS;r++) {
    a_col_loop : for (int c=0;c<A_COLS;c++) {
      a_i[r][c] = A[r][c];
    }
  }
  b_row_loop :  for (int r=0;r<B_ROWS;r++) {
    b_col_loop : for (int c=0;c<B_COLS;c++) {
      b_i[r][c] = B[r][c];
    }
  }

  // Call multiplier
  hls::matrix_multiply <hls::NoTranspose, hls::NoTranspose, A_ROWS, A_COLS, B_ROWS, B_COLS, C_ROWS, C_COLS, MATRIX_T, MATRIX_T> (a_i, b_i, c_i);

  // Copy local memory contents to outputs
  c_row_loop : for (int r=0;r<A_COLS;r++) {
    c_col_loop : for (int c=0;c<B_COLS;c++) {
      C[r][c] = c_i[r][c];
    }
  }

}

