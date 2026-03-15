-- Deploy: schemas/agent_db_app_public/tables/expenses/indexes/expenses_category_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/category/column
-- requires: schemas/agent_db_app_public/tables/expenses/indexes/expenses_date_idx


CREATE INDEX expenses_category_idx ON agent_db_app_public.expenses USING BTREE ( category );

