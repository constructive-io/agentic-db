-- Deploy: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_merchant_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/merchant/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_category_idx


CREATE INDEX expenses_merchant_idx ON "agentic_db_app_public".expenses USING BTREE ( merchant );

