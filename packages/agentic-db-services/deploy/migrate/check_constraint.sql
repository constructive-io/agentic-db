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
  ('019d934f-8a66-721e-a9d5-414377336d2d', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-898e-73d5-9f57-6c8589048db5', 'users_username_chk', 'c', '{019d934f-8a46-7cb8-a25d-636c1aaec5fa}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d934f-8abc-7787-aff5-5e7ef93de53a', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-898e-73d5-9f57-6c8589048db5', 'users_display_name_chk', 'c', '{019d934f-8aa3-7535-84ea-07248e8f42a1}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d934f-941e-71fd-ab32-b1af0a008141', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-92fc-7d5e-aef9-43e50d7a5049', 'app_permissions_bitnum_chk', 'c', '{019d934f-9404-7e50-9b77-d732e1b70a8f}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d934f-e0e6-7745-adf6-32c732def414', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-dfa9-7350-84a0-f7a734116364', 'org_permissions_bitnum_chk', 'c', '{019d934f-e0cc-70ec-9796-ea1e95dde249}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d9350-3d15-73a9-bc83-beafb6c6ef87', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-38cb-7e93-9aa0-57d2ac30337c', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d9350-3b32-7e4d-9d51-a63c577c596a,019d9350-3bb6-7b15-9f85-3910e1d4e042}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d9350-7d54-7b91-939a-aec24540d2bd', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-7b1c-7fb4-b6de-e20235c752cd', 'crypto_addresses_address_chk', 'c', '{019d9350-7d0e-7471-a315-1b2298136f26}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


