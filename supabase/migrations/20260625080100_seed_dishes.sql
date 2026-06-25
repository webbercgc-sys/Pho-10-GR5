
-- ============ SEED: Dishes for Phở 10 ============
INSERT INTO public.dishes (name, description, price, is_available, sort_order) VALUES
  ('Phở Bò Tái',        'Bánh phở, thịt bò tái, nước dùng xương bò hầm 12 tiếng',       65000, true,  1),
  ('Phở Bò Chín',       'Bánh phở, thịt bò chín mềm, nước dùng đậm đà',                 65000, true,  2),
  ('Phở Bò Tái Chín',   'Kết hợp tái và chín, cân bằng hương vị',                        65000, true,  3),
  ('Phở Bò Gân',        'Bánh phở, gân bò giòn dai, nước dùng đặc biệt',                 70000, true,  4),
  ('Phở Bò Đặc Biệt',   'Tái, chín, gân, gầu — đầy đủ topping cao cấp',                  80000, true,  5),
  ('Phở Gà',            'Bánh phở, thịt gà xé, nước dùng gà trong vắt',                  60000, true,  6),
  ('Quẩy',              'Bánh quẩy giòn, ăn kèm phở',                                    10000, true,  7),
  ('Trứng Gà',          'Trứng gà thêm vào phở',                                          8000, true,  8),
  ('Nước Ngọt',         'Pepsi, 7Up hoặc Mirinda',                                        20000, true,  9),
  ('Nước Lọc',          'Nước suối đóng chai 500ml',                                      10000, true, 10)
ON CONFLICT (name) DO NOTHING;
