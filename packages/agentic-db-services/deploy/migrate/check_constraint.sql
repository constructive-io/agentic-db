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
  ('019d20cd-7ad9-77fe-bfad-a4e8cd6406aa', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7a20-7176-823e-cca436cf06f3', 'users_username_chk', 'c', '{019d20cd-7ac5-7f82-a270-8aaa81e80e2e}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d20cd-7b17-7a0e-b3c5-91dd88d5dad0', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7a20-7176-823e-cca436cf06f3', 'users_display_name_chk', 'c', '{019d20cd-7b06-7e97-a9b9-f0374fcf4d97}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d20cd-816a-763f-8085-88c55b167418', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-80a0-741c-8107-a97b9611df53', 'app_permissions_bitnum_chk', 'c', '{019d20cd-8159-7474-9487-cc9a33b9f9e0}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d20cd-b615-7f3f-8204-fd5ef8352ff3', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-b539-79a4-90d6-42d1c5454329', 'org_permissions_bitnum_chk', 'c', '{019d20cd-b602-73b9-a6e8-3b72e94ae40e}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d20cd-f88b-7a23-9f5b-4c76ba2e808a', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-f56f-7ba8-8af0-a22f13d8c3ea', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d20cd-f70d-7645-808e-dbc23615aee5,019d20cd-f771-7f31-adaa-d75a49a688a1}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d20ce-2652-711e-9dbd-7594ae02c739', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-24e2-786b-9b02-a5534552e2ba', 'crypto_addresses_address_chk', 'c', '{019d20ce-2619-7eb6-8e5d-75b46ed0c7d6}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


