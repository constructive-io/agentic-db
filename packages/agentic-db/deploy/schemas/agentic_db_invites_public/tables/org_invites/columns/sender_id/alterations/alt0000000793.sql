-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/columns/sender_id/alterations/alt0000000793
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_invites_public/tables/org_invites/columns/sender_id/column



ALTER TABLE "agentic_db_invites_public".org_invites 
    ALTER COLUMN sender_id SET DEFAULT jwt_public.current_user_id();

