-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/receiver_id/alterations/alt0000002405
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/receiver_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-invites-public".org_invites.receiver_id IS E'User ID of the intended recipient, if targeting a specific user';

