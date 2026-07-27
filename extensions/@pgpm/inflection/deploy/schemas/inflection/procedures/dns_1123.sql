-- Deploy schemas/inflection/procedures/dns_1123 to pg

-- requires: schemas/inflection/schema

-- Normalizes a value into a Kubernetes DNS-1123 label (RFC 1123):
-- lowercase alphanumerics and '-', at most 63 characters, and no leading or
-- trailing '-'. Used to derive Knative/K8s object names from arbitrary slugs.

BEGIN;

CREATE FUNCTION inflection.dns_1123 (value text)
  RETURNS text
  AS $$
  WITH lowercased AS (
    SELECT
      lower(value) AS value
),
-- ':' delimits namespaced identifiers; map to '--' so the boundary survives
namespaced AS (
  SELECT
    replace(value, ':', '--') AS value
FROM
  lowercased
),
hyphenated AS (
  SELECT
    replace(value, '_', '-') AS value
FROM
  namespaced
),
stripped AS (
  SELECT
    regexp_replace(value, '[^a-z0-9-]', '', 'g') AS value
FROM
  hyphenated
),
trimmed AS (
  SELECT
    regexp_replace(value, '^-+|-+$', '', 'g') AS value
FROM
  stripped
),
truncated AS (
  SELECT
    "left"(value, 63) AS value
FROM
  trimmed
),
-- truncation can leave a dangling '-'; drop any trailing non-alphanumerics
final AS (
  SELECT
    regexp_replace(value, '[^a-z0-9]+$', '') AS value
FROM
  truncated
)
SELECT
  value
FROM
  final;
$$
LANGUAGE SQL
STRICT IMMUTABLE;

COMMIT;
