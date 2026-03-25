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
  ('019d2727-71dc-7697-8cf8-1aeca02b5897', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-7153-7bae-b8ec-6f398ecf0b75', 'users_username_chk', 'c', '{019d2727-71cb-75f9-914c-151a3eb6373d}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d2727-7214-725c-892e-05dc103bedc3', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-7153-7bae-b8ec-6f398ecf0b75', 'users_display_name_chk', 'c', '{019d2727-7205-7770-aa05-54c0bf4b7166}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d2727-77d6-7eb4-9b78-5fd45ec37f6c', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-7716-776b-ac97-df47ca6b3867', 'app_permissions_bitnum_chk', 'c', '{019d2727-77c5-7e13-b6e2-0f7eb8d0fd28}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d2727-aca5-77c2-ac2a-5f6a1a5c947b', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-abdb-7e45-9524-98962317e78b', 'org_permissions_bitnum_chk', 'c', '{019d2727-ac92-7aa3-ac88-f3d8585d38f7}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d2727-f60b-798e-af20-30918b564a1d', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-f33f-79db-9f54-b31a4bb3c77b', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d2727-f4b3-700b-9678-a00e5982d98f,019d2727-f509-7096-b67f-49922a632662}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d2728-2832-7e23-8a8c-d2ddc1669835', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-26da-71e7-8d72-0d02ca072d71', 'crypto_addresses_address_chk', 'c', '{019d2728-27ff-7822-b3a5-64b9b9d5293f}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


