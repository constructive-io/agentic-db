-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/sender_id/alterations/alt0000002460
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table
-- requires: schemas/agent_db_invites_public/tables/invites/columns/sender_id/column



ALTER TABLE "agent_db_invites_public".invites 
    ALTER COLUMN sender_id SET DEFAULT jwt_public.current_user_id();

