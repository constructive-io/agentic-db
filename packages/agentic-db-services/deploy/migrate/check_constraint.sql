-- Deploy: migrate/check_constraint
-- made with <3 @ constructive.io

-- requires: migrate/unique_constraint


SET session_replication_role TO replica;
-- using replica in case we are deploying triggers to metaschema_public

-- unaccent, postgis affected and require grants
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public to public;

DO $LQLMIGRATION$
  DECLARE
  BEGIN

    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_user');
    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_admin');

  END;
$LQLMIGRATION$;

INSERT INTO metaschema_public.check_constraint (
  id,
  database_id,
  table_id,
  name,
  type,
  field_ids,
  expr
) VALUES
  ('084d17d8-2c50-28cd-c1ca-815a7b8ec9b1', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '5d9c849b-e962-041a-de77-54774d5d1e62', 'users_username_chk', 'c', '{92e910ae-1d0b-b299-fca1-738f1f98f431}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('ffb9beb6-492a-3694-ca4f-b2a8d0b1ed7f', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '5d9c849b-e962-041a-de77-54774d5d1e62', 'users_display_name_chk', 'c', '{db32152c-4e4c-8a28-e715-916b0b3a8181}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('c2c002f2-e566-22b2-3c2b-b2aa00b8567e', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'f43dde48-770f-2298-4185-844fb1eb5e59', 'app_permissions_bitnum_chk', 'c', '{6379015c-003a-73d4-fff0-35bc237f4f36}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('4cde63cb-f018-00a6-db31-49df0beb9d12', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'cce7d6a1-ad70-e81b-0cef-1979a8413ccf', 'org_permissions_bitnum_chk', 'c', '{f7000844-048f-ef70-7384-93fffe17f6f7}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('1734cd01-910f-a646-be8f-8e0d2f200542', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'ef9ac65a-cb9f-377d-81d5-5db94c8cd271', 'org_chart_edges_child_id_parent_id_chk', 'c', '{32b66c2b-7ad9-da70-331e-f699ef252335,6a0abe6d-3d71-d29b-babd-4626f61d7b90}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('830ff819-c238-a6b7-063f-c5a42120d445', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'f65c900b-5027-c8ee-174e-6f9909b0d58d', 'crypto_addresses_address_chk', 'c', '{916cfa57-830a-53d2-39a0-d179a0ed62fb}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


