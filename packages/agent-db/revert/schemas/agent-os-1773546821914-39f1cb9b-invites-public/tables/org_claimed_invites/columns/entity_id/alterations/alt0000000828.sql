-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/columns/entity_id/alterations/alt0000000828


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_claimed_invites 
  ALTER COLUMN entity_id DROP NOT NULL;


