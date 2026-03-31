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
  ('019d42ff-cb17-7bfb-a84d-a12e01261d11', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ca62-77a0-ab97-b8d784c420dc', 'users_username_chk', 'c', '{019d42ff-cb02-768c-8a79-f304fc90db4f}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d42ff-cb6d-721b-8e6a-3025c143041c', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ca62-77a0-ab97-b8d784c420dc', 'users_display_name_chk', 'c', '{019d42ff-cb5d-73a1-bbe6-c60943b7d3ad}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d42ff-d235-7be0-a18c-11410921be96', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d15d-75cc-99fc-56bbef6c588f', 'app_permissions_bitnum_chk', 'c', '{019d42ff-d223-7c49-9336-33e58bec3650}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d4300-091d-71b3-9378-8f889a5a6375', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-0840-7891-b5d8-7dff931633d2', 'org_permissions_bitnum_chk', 'c', '{019d4300-0909-7392-88a9-62434af8e2b9}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d4300-4b59-770f-b7cd-1ac21e38cf40', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-4846-73f6-b3c0-3d2de11edd10', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d4300-49e3-72b2-bf51-b45cd3c8ca83,019d4300-4a45-7f65-8735-159bc184b6bd}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d4300-78e0-7156-b5a3-88dbd255a514', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-7781-78ca-b3cd-8aafe98bf29a', 'crypto_addresses_address_chk', 'c', '{019d4300-78ac-787e-a935-60c529c57c97}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


