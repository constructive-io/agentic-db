-- Deploy: schemas/agentic_db_users_public/tables/users/columns/created_at/alterations/alt0000001725
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_users_public/tables/users/columns/created_at/column


ALTER TABLE agentic_db_users_public.users 
  ALTER COLUMN created_at SET DEFAULT now();

