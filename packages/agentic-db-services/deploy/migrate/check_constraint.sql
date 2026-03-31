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
  ('019d416f-3923-7632-902b-be8730c78e6a', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-384a-79e2-9379-99ca3460e274', 'users_username_chk', 'c', '{019d416f-390b-7c20-bb8b-3bc00df34b56}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d416f-397b-7b02-8dd2-9a7d83e31e54', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-384a-79e2-9379-99ca3460e274', 'users_display_name_chk', 'c', '{019d416f-395f-7de6-91cb-59346035f400}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d416f-4145-7187-8373-c29b0a43ba6d', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-404c-7ccb-b3ea-38f77868b961', 'app_permissions_bitnum_chk', 'c', '{019d416f-412c-7664-86fd-9dbe74307786}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d416f-7b5e-769d-8575-0d3178f0e8d1', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-7a66-7675-8c75-d850aa4da6c5', 'org_permissions_bitnum_chk', 'c', '{019d416f-7b47-7f06-91d7-af16fd12a961}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d416f-c2fe-7dec-92bd-328e3cfb19f6', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-bfd2-7e14-bf60-c12dea5faeb9', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d416f-c175-79de-8c07-c57e844fa6b9,019d416f-c1ed-7017-bab9-490703ac9d0e}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d416f-f33a-7dc9-8eda-820fc748b871', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-f1c3-72e2-8872-af6832fe4867', 'crypto_addresses_address_chk', 'c', '{019d416f-f2fa-7907-bbdf-1530f57c4f1c}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


