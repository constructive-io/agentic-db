-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_claimed_invites 
  DROP COLUMN entity_id RESTRICT;


