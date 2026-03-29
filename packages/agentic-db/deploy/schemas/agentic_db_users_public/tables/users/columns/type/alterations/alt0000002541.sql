-- Deploy: schemas/agentic_db_users_public/tables/users/columns/type/alterations/alt0000002541
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_users_public/tables/users/columns/type/column


ALTER TABLE agentic_db_users_public.users 
  ALTER COLUMN type SET NOT NULL;

