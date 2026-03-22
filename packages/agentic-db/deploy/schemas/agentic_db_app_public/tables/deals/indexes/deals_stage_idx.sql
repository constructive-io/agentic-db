-- Deploy: schemas/agentic_db_app_public/tables/deals/indexes/deals_stage_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/stage/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX deals_stage_idx ON agentic_db_app_public.deals USING BTREE ( stage );

