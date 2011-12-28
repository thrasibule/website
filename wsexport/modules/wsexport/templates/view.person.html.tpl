<article itemscope="itemscope" itemtype="http://schema.org/Person">
        <h1 itemprop="name">{$person->name|eschtml}</h1>
        {if $person->birthDate || $person->deathDate}<h2>({if is_numeric($person->birthDate)}<time itemprop="birthDate" datetime="{$person->birthDate}">{$person->birthDate}</time>{else}{$person->birthDate|eschtml}{/if} - {if is_numeric($person->deathDate)}<time itemprop="deathDate" datetime="{$person->deathDate}">{$person->deathDate}</time>{else}{$person->deathDate|eschtml}{/if})</h2>{/if}
        <div class="row">
                <div class="span4">
                        {if $person->imageUrl != ''}<img itemprop="image" src="{$person->imageUrl}" alt="{@wsexport.cover@}" title="{@wsexport.cover@}" width="200" />{/if}
                </div>
                <div itemprop="description" class="span8">{$person->description|eschtml}</div>
                <aside class="span4">
                        <h5>{@wsexport.links@}</h5>
                        <ul>
                                {if $person->title}<li><a href="http://{$person->lang}.wikisource.org/wiki/{$person->title|escurl}">Wikisource</a></li>{/if}
                                {if $person->wikipedia}<li><a href="http://{$person->lang}.wikipedia.org/wiki/{$person->title|escurl}">Wikipedia</a></li>{/if}
                                {if $person->wikiquote}<li><a href="http://{$person->lang}.wikiquote.org/wiki/{$person->wikiquote|escurl}">Wikiquote</a></li>{/if}
                                {if $person->commons}<li><a href="http://commons.wikimedia.org/wiki/{$person->commons|escurl}">Wikimedia commons</a></li>{/if}
                        </ul>
                </aside>
        </div>
        {include 'index.book.html'}
</article>
