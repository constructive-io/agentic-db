-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/constraints/org_claimed_invites_sender_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_claimed_invites 
  DROP CONSTRAINT org_claimed_invites_sender_id_fkey;


