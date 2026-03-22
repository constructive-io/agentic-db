-- Deploy: schemas/agentic_db_users_public/tables/role_types/alterations/alt0000001175
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/role_types/table


ALTER TABLE agentic_db_users_public.role_types 
  DISABLE ROW LEVEL SECURITY;

