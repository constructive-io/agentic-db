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
  ('019d130c-f1ff-7e0e-b502-f994f219aa0e', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f14b-7ef8-94e3-e005503a699d', 'users_username_chk', 'c', '{019d130c-f1e9-76a1-a507-ebdb7813c3f1}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d130c-f269-7141-8b5b-0becdb6455ee', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f14b-7ef8-94e3-e005503a699d', 'users_display_name_chk', 'c', '{019d130c-f253-761e-aee4-06ccadae3ecf}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d130c-f9a5-7c5b-bf62-4ef8417e35fd', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f8c1-783c-ac27-00d4e687ddb7', 'app_permissions_bitnum_chk', 'c', '{019d130c-f992-7339-8c61-a09ea0e789be}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d130d-3842-7e13-a6e8-a440ba5c0687', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-373c-7678-9350-2dc76515f178', 'org_permissions_bitnum_chk', 'c', '{019d130d-382d-7002-b209-5f75e633822b}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d130d-846a-720c-b0f4-ab69653b3fe0', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-80f9-7a4c-8d0e-798524f732de', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d130d-82e0-74f1-b19a-272c2acab415,019d130d-8346-7cb0-a89f-8871b72e7fb9}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d130d-b64f-7f53-b687-8354be2424b2', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-b4c0-7b5b-b43f-68ae99ec218e', 'crypto_addresses_address_chk', 'c', '{019d130d-b615-7ea8-a234-2356de1200e1}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


