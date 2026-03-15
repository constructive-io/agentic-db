-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/columns/receiver_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_invites 
  DROP COLUMN receiver_id RESTRICT;


