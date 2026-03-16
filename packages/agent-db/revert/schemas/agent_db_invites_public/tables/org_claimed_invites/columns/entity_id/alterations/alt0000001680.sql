-- Revert: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/entity_id/alterations/alt0000001680


ALTER TABLE "agent_db_invites_public".org_claimed_invites 
  ALTER COLUMN entity_id DROP NOT NULL;


