-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/table


GRANT INSERT (email, expires_at, multiple, invite_limit, entity_id, receiver_id) ON "agent-os-1773551593867-bac64076-invites-public".org_invites TO authenticated;

