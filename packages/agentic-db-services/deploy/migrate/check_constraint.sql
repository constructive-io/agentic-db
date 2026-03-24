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
  ('019d21f8-23d7-752f-a539-2fde5297c3db', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2335-70cb-b636-53bf74d97668', 'users_username_chk', 'c', '{019d21f8-23c5-7692-8363-44a9d4330fc6}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d21f8-2416-7974-b8f0-30f1ee3c71b2', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2335-70cb-b636-53bf74d97668', 'users_display_name_chk', 'c', '{019d21f8-2407-756e-8d70-1b528d90b99c}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d21f8-2a0e-75fb-a639-68761dd05422', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2951-765c-8106-b76a4e38815f', 'app_permissions_bitnum_chk', 'c', '{019d21f8-29fe-76ec-940a-6da21d6fca07}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d21f8-5adb-73cb-8786-844cf5215d13', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-5a09-7708-a88f-0e91d961aeda', 'org_permissions_bitnum_chk', 'c', '{019d21f8-5ac7-7ca1-a945-68f7b2f55436}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d21f8-97e1-70d8-a5c5-91243493f8b4', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-9505-7ff1-91b3-f64f2ea4917b', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d21f8-9672-7d22-af66-d8c572d72e09,019d21f8-96cc-74d4-ad88-f0db8c8e45d5}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d21f8-c1f6-728d-93b9-3ae5b7bc7e36', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-c0bd-73b2-a45b-e6ed737b78f0', 'crypto_addresses_address_chk', 'c', '{019d21f8-c1c6-7961-a890-77d3ed4a0f98}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


