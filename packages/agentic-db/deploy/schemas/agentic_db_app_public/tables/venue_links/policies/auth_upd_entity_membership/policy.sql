-- Deploy: schemas/agentic_db_app_public/tables/venue_links/policies/auth_upd_entity_membership/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_app_public/tables/event_links/columns/embedding_stale/alterations/alt0000005764


CREATE POLICY auth_upd_entity_membership ON agentic_db_app_public.venue_links
FOR UPDATE
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM agentic_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

