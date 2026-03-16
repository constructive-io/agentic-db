-- Revert: schemas/agent_db_invites_public/tables/org_invites/columns/entity_id/alterations/alt0000001670


ALTER TABLE "agent_db_invites_public".org_invites 
  ALTER COLUMN entity_id DROP NOT NULL;


