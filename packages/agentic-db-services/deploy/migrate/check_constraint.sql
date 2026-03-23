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
  ('e15c1ba0-c713-b936-f382-f6811a99c804', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', 'users_username_chk', 'c', '{26dedf1f-f33b-6cae-9270-cbae13ece08f}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('720099e0-fe75-5ceb-c034-dd3a20e819df', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', 'users_display_name_chk', 'c', '{af24140a-166d-db90-00c1-8bf40241e3c9}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('cb49d96a-0d91-3d74-b859-125b62363d25', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '80787704-825b-81da-49d3-1461649de732', 'app_permissions_bitnum_chk', 'c', '{49eefeee-cc49-f264-ddb5-eecb7e99e404}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('0eba4f7c-2372-fb8a-bcdc-dce26a065498', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '04110344-716c-1565-2ef3-0b5d077c109d', 'org_permissions_bitnum_chk', 'c', '{fdb58ae9-c408-352f-b691-5bf8c20795a2}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('f4e18152-5961-0e10-da60-0783b2e4e833', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'bee9acf5-642f-dbd7-9013-3b0c23097da9', 'org_chart_edges_child_id_parent_id_chk', 'c', '{fb8b145f-9929-292c-50a3-18eaac852bd9,d46fbd66-edb3-d0e3-6893-770fd0253384}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('34ffcbd6-6501-f852-97ed-27fdd8e0a26b', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '4ce16892-87d4-bb44-d743-6d182552e2c0', 'crypto_addresses_address_chk', 'c', '{886b0dba-d142-8919-7c2d-9bf4a3c0c7a4}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


