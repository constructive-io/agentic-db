-- Deploy: schemas/agent_db_app_public/tables/expenses/indexes/expenses_merchant_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/merchant/column
-- requires: schemas/agent_db_app_public/tables/expenses/indexes/expenses_category_idx


CREATE INDEX expenses_merchant_idx ON agent_db_app_public.expenses USING BTREE ( merchant );

