-- Deploy: schemas/agentic_db_invites_public/tables/app_invites/alterations/alt0000012756
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/app_invites/table


ALTER TABLE agentic_db_invites_public.app_invites 
  DISABLE ROW LEVEL SECURITY;

