-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/columns/receiver_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".org_claimed_invites 
  DROP COLUMN receiver_id RESTRICT;


