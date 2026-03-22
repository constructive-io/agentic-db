-- Deploy: schemas/agentic_db_users_public/tables/users/alterations/alt0000001170
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table


ALTER TABLE agentic_db_users_public.users 
  DISABLE ROW LEVEL SECURITY;

