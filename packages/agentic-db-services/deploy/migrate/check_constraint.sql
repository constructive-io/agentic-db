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
  ('019d19cf-05a6-78f1-a375-df2b338ca222', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-04f9-762a-946a-add4e6430409', 'users_username_chk', 'c', '{019d19cf-0592-7c07-bc53-1198937e79e0}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d19cf-05e4-7a45-96d7-bd5b43fe389b', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-04f9-762a-946a-add4e6430409', 'users_display_name_chk', 'c', '{019d19cf-05d3-71c9-86b3-b0ccb14bbdfe}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d19cf-0c61-7ef1-8458-10fb9b8a8eb1', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0b8b-7b80-baa2-11475a5f5696', 'app_permissions_bitnum_chk', 'c', '{019d19cf-0c4f-7fdd-a4a0-77bbd98c92a2}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d19cf-473f-74eb-9059-773376c38f9a', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-4653-7f50-b3dd-b0636904ddb9', 'org_permissions_bitnum_chk', 'c', '{019d19cf-472a-7b7b-8488-271059ee7363}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d19cf-95be-7e41-a242-b009a858e39e', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-92af-7930-b4d8-fc08df9d1a36', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d19cf-9444-7d00-92ff-3e636e843f61,019d19cf-94b1-79d7-b456-ff4a07db59a3}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d19cf-cb3e-79ef-9f6e-b76d6500799d', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-c9cb-729b-b81d-b01eb071e13f', 'crypto_addresses_address_chk', 'c', '{019d19cf-cb07-7d99-b652-9878382bf25d}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


