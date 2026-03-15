-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/sender_id/alterations/alt0000002402


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_invites 
  ALTER COLUMN sender_id DROP NOT NULL;


