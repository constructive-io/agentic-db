-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/constraints/org_claimed_invites_receiver_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".org_claimed_invites 
  DROP CONSTRAINT org_claimed_invites_receiver_id_fkey;


