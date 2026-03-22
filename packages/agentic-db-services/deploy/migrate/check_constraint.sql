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
  ('019d13bc-223b-706a-bd35-5da5763832b1', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', 'users_username_chk', 'c', '{019d13bc-222a-7725-b00c-3790c3678138}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d13bc-2272-739d-a87e-7a17034966bc', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', 'users_display_name_chk', 'c', '{019d13bc-2263-7246-a80b-524d6ce5822f}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d13bc-281d-734c-82bf-40907d54c642', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2764-7eb7-8b8d-849641335581', 'app_permissions_bitnum_chk', 'c', '{019d13bc-280e-7224-aceb-e62d4ec06def}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d13bc-5878-71d4-80d1-c5aad3b8ec4c', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-57a5-739e-819f-c276c42edb57', 'org_permissions_bitnum_chk', 'c', '{019d13bc-5864-7a10-9f56-666b5ce99d59}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d13bc-9487-7a68-b398-466546ceae6c', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-91bf-7ccb-b079-ea3d45d352b0', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d13bc-9325-7c04-a767-a52b3275298e,019d13bc-937a-7884-b6be-b4ed7ab9e2d3}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d13bc-be49-7efa-8180-141b4a9b8b7f', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-bd07-7448-b92f-fac43de1c576', 'crypto_addresses_address_chk', 'c', '{019d13bc-be18-7340-9ced-3b5b63050512}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


