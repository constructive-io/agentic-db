-- Deploy: schemas/agentic_db_app_public/tables/deals_chunks/indexes/deals_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/columns/created_at/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX deals_chunks_created_at_idx ON agentic_db_app_public.deals_chunks ( created_at );

